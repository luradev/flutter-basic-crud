class Carro {
  String marca;
  String descricao;
  //String url;

  Carro(this.marca, this.descricao);
}

class CarroController {
  static List<Carro> listaCarros = <Carro>[];

  static List<Carro> getAllCarros() {
    return listaCarros;
  }

  static void deleteCarro(Carro index) {
    listaCarros.remove(index);
  }

  /*
  static List<Carro> getCarros() {
    listaCarros.add(Carro('BMW',
        'https://photo-voiture.motorlegend.com/hd/bmw-m2-f87-coupe-cs-3-0-450-ch-126517.jpg'));
    listaCarros.add(Carro('Volvo',
        'https://www.rushlane.com/wp-content/uploads/2019/12/volvo-xc40-petrol-bs6-india-launch.jpg'));
    listaCarros.add(Carro('Mercedes',
        'https://parkers-images.bauersecure.com/gallery-image/pagefiles/268847/1752x1168/_mercedes-benz-c200.jpg'));
    listaCarros.add(Carro('Porsche',
        'https://images.everyeye.it/img-notizie/porsche-911-hybrid-prime-informazioni-futura-supercar-ibrida-v4-355351.jpg'));
    return listaCarros;
  }
  */
}
