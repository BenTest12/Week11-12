# Kubernetes Week.

This readme will be updated later on , Following are some instructions to run this pipeline.

## Installation

Clone the repo locally and run the files inside the Dependencies folder first.

```bash
kubectl apply -f ingress.yml
```
```bash
kubectl apply -f storage.yml
```
```bash
kubectl apply -f pvc.yml
```

## Usage (while inside helm/Deployment/templates Dir)

```bash
kubectl apply . 
```

## Using helm chart.
To use the helm chart we must run the pipeline , since variables are pulled from the pipeline remotly in order to generalize the helm chart for this weight app.

The pipeline takes care of the configuration and variables required , if you intend to run this pipeline locally you must provide the variables on your own

(WILL UPDATE FROM HERE)
## License
[SELA](https://www.sela.co.il/)