// DI Container

// Interfaces from application layer
import { IBaaSService } from '../application/interfaces/services/IBaaSService.interface';
import { IPaymentService } from '../application/interfaces/services/IPaymentService.interface';

// Services from the infrastructure layer
import { StripeService } from '../infrastructure/services/StripeService';
import { SupabaseService } from '../infrastructure/services/SupabaseService';

class DiContainer {
  // Services
  public readonly paymentService: IPaymentService;
  public readonly baasService: IBaaSService;

  constructor() {
    // Init Services
    this.paymentService = new StripeService();
    this.baasService = new SupabaseService();
  }
}

const diContainer = new DiContainer();

export default diContainer;
