fullnameOverride: calico

serviceAccount:
  create: ${ service_account_create }

calico:
  tag: ${ calico_version }
  typha:
    image: ${ typha_image }
  node:
    image: ${ calico_image }
