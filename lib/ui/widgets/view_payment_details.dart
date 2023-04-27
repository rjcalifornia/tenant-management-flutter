import 'package:flutter/material.dart';
import 'package:home_management_app/global.dart';

class PaymentDetailsScreen extends StatelessWidget {
  final paymentDetails;
  final tenantName;
  final tenantLastname;
  const PaymentDetailsScreen(
      {super.key,
      required this.paymentDetails,
      this.tenantLastname,
      this.tenantName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BrandColors.rausch,
        automaticallyImplyLeading: true,
        centerTitle: true,
        elevation: 0.0,
        title: const Text("Detalles de pago de alquiler"),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: BrandColors.rausch,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(),
              )
            ],
          )),
          Positioned.fill(
              child: Container(
            height: double.infinity,
            margin:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 7.0,
                    offset: Offset(0, 3),
                  )
                ],
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xfff7f9ff)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "${paymentDetails.leaseId.tenantId.name}",
                  style: const TextStyle(
                      fontSize: 22,
                      color: BrandColors.hof,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "${paymentDetails.leaseId.tenantId.lastname}",
                  style: const TextStyle(
                      fontSize: 22,
                      color: BrandColors.hof,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  "Número de recibo",
                  style: TextStyle(fontSize: 14, color: BrandColors.foggy),
                ),
                Text(
                  paymentDetails.receiptNumber.toString(),
                  style: const TextStyle(fontSize: 20, color: BrandColors.loft),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Tipo de pago",
                  style: TextStyle(fontSize: 14, color: BrandColors.foggy),
                ),
                Text(
                  paymentDetails.paymentTypeId.name.toString(),
                  style: const TextStyle(fontSize: 20, color: BrandColors.loft),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Fecha de pago",
                  style: TextStyle(fontSize: 14, color: BrandColors.foggy),
                ),
                Text(
                  paymentDetails.paymentDate.toString(),
                  style: const TextStyle(fontSize: 20, color: BrandColors.loft),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Cantidad",
                  style: TextStyle(fontSize: 14, color: BrandColors.foggy),
                ),
                Text(
                  "\$${paymentDetails.payment.toString()}",
                  style: const TextStyle(fontSize: 20, color: BrandColors.loft),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Pago correspondiente al mes de",
                  style: TextStyle(fontSize: 14, color: BrandColors.foggy),
                ),
                Text(
                  paymentDetails.monthCancelledName.toString(),
                  style: const TextStyle(fontSize: 20, color: BrandColors.loft),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Recibo emitido por",
                  style: TextStyle(fontSize: 14, color: BrandColors.foggy),
                ),
                Text(
                  paymentDetails.leaseId.propertyId.landlordId.name.toString(),
                  style: const TextStyle(fontSize: 20, color: BrandColors.loft),
                ),
                Text(
                  paymentDetails.leaseId.propertyId.landlordId.lastname
                      .toString(),
                  style: const TextStyle(fontSize: 20, color: BrandColors.loft),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}