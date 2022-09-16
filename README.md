# run

```
$ make setup
# wait a few secs for operator to be ready
$ make apply
```

# logs

```
$ k logs -f ta-test-collector-0
2022-09-16T16:59:34.907Z	info	service/telemetry.go:115	Setting up own telemetry...
2022-09-16T16:59:34.908Z	info	service/telemetry.go:156	Serving Prometheus metrics	{"address": "0.0.0.0:8888", "level": "basic"}
2022-09-16T16:59:34.910Z	info	service/service.go:112	Starting otelcol...	{"Version": "0.60.0", "NumCPU": 4}
2022-09-16T16:59:34.910Z	info	extensions/extensions.go:42	Starting extensions...
2022-09-16T16:59:34.910Z	info	pipelines/pipelines.go:74	Starting exporters...
2022-09-16T16:59:34.910Z	info	pipelines/pipelines.go:78	Exporter is starting...	{"kind": "exporter", "data_type": "metrics", "name": "prometheus"}
2022-09-16T16:59:34.910Z	info	pipelines/pipelines.go:82	Exporter started.	{"kind": "exporter", "data_type": "metrics", "name": "prometheus"}
2022-09-16T16:59:34.910Z	info	pipelines/pipelines.go:86	Starting processors...
2022-09-16T16:59:34.910Z	info	pipelines/pipelines.go:98	Starting receivers...
2022-09-16T16:59:34.910Z	info	pipelines/pipelines.go:102	Receiver is starting...	{"kind": "receiver", "name": "prometheus", "pipeline": "metrics"}
2022-09-16T16:59:34.911Z	info	pipelines/pipelines.go:106	Receiver started.	{"kind": "receiver", "name": "prometheus", "pipeline": "metrics"}
2022-09-16T16:59:34.911Z	info	service/service.go:129	Everything is ready. Begin running and processing data.
2022-09-16T16:59:39.911Z	error	scrape/scrape.go:488	Creating target failed	{"kind": "receiver", "name": "prometheus", "pipeline": "metrics", "scrape_pool": "/jobs/serviceMonitor%2Fdefault%2Fsm-test%2F0/targets", "error": "instance 0 in group http://ta-test-targetallocator/jobs/serviceMonitor%2Fdefault%2Fsm-test%2F0/targets?collector_id=ta-test-collector-0:1: scrape interval cannot be 0", "errorVerbose": "scrape interval cannot be 0\ngithub.com/prometheus/prometheus/scrape.PopulateLabels\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/target.go:446\ngithub.com/prometheus/prometheus/scrape.TargetsFromGroup\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/target.go:504\ngithub.com/prometheus/prometheus/scrape.(*scrapePool).Sync\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/scrape.go:486\ngithub.com/prometheus/prometheus/scrape.(*Manager).reload.func1\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/manager.go:222\nruntime.goexit\n\truntime/asm_amd64.s:1571\ninstance 0 in group http://ta-test-targetallocator/jobs/serviceMonitor%2Fdefault%2Fsm-test%2F0/targets?collector_id=ta-test-collector-0:1\ngithub.com/prometheus/prometheus/scrape.TargetsFromGroup\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/target.go:506\ngithub.com/prometheus/prometheus/scrape.(*scrapePool).Sync\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/scrape.go:486\ngithub.com/prometheus/prometheus/scrape.(*Manager).reload.func1\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/manager.go:222\nruntime.goexit\n\truntime/asm_amd64.s:1571"}
github.com/prometheus/prometheus/scrape.(*scrapePool).Sync
	github.com/prometheus/prometheus@v0.38.0/scrape/scrape.go:488
github.com/prometheus/prometheus/scrape.(*Manager).reload.func1
	github.com/prometheus/prometheus@v0.38.0/scrape/manager.go:222
2022-09-16T16:59:39.911Z	error	scrape/scrape.go:488	Creating target failed	{"kind": "receiver", "name": "prometheus", "pipeline": "metrics", "scrape_pool": "/jobs/dummy/targets", "error": "instance 0 in group http://ta-test-targetallocator/jobs/dummy/targets?collector_id=ta-test-collector-0:0: scrape interval cannot be 0", "errorVerbose": "scrape interval cannot be 0\ngithub.com/prometheus/prometheus/scrape.PopulateLabels\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/target.go:446\ngithub.com/prometheus/prometheus/scrape.TargetsFromGroup\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/target.go:504\ngithub.com/prometheus/prometheus/scrape.(*scrapePool).Sync\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/scrape.go:486\ngithub.com/prometheus/prometheus/scrape.(*Manager).reload.func1\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/manager.go:222\nruntime.goexit\n\truntime/asm_amd64.s:1571\ninstance 0 in group http://ta-test-targetallocator/jobs/dummy/targets?collector_id=ta-test-collector-0:0\ngithub.com/prometheus/prometheus/scrape.TargetsFromGroup\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/target.go:506\ngithub.com/prometheus/prometheus/scrape.(*scrapePool).Sync\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/scrape.go:486\ngithub.com/prometheus/prometheus/scrape.(*Manager).reload.func1\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/manager.go:222\nruntime.goexit\n\truntime/asm_amd64.s:1571"}
github.com/prometheus/prometheus/scrape.(*scrapePool).Sync
	github.com/prometheus/prometheus@v0.38.0/scrape/scrape.go:488
github.com/prometheus/prometheus/scrape.(*Manager).reload.func1
	github.com/prometheus/prometheus@v0.38.0/scrape/manager.go:222
2022-09-16T16:59:39.911Z	error	scrape/scrape.go:488	Creating target failed	{"kind": "receiver", "name": "prometheus", "pipeline": "metrics", "scrape_pool": "/jobs/serviceMonitor%2Fdefault%2Fsm-test%2F0/targets", "error": "instance 0 in group http://ta-test-targetallocator/jobs/serviceMonitor%2Fdefault%2Fsm-test%2F0/targets?collector_id=ta-test-collector-0:0: scrape interval cannot be 0", "errorVerbose": "scrape interval cannot be 0\ngithub.com/prometheus/prometheus/scrape.PopulateLabels\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/target.go:446\ngithub.com/prometheus/prometheus/scrape.TargetsFromGroup\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/target.go:504\ngithub.com/prometheus/prometheus/scrape.(*scrapePool).Sync\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/scrape.go:486\ngithub.com/prometheus/prometheus/scrape.(*Manager).reload.func1\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/manager.go:222\nruntime.goexit\n\truntime/asm_amd64.s:1571\ninstance 0 in group http://ta-test-targetallocator/jobs/serviceMonitor%2Fdefault%2Fsm-test%2F0/targets?collector_id=ta-test-collector-0:0\ngithub.com/prometheus/prometheus/scrape.TargetsFromGroup\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/target.go:506\ngithub.com/prometheus/prometheus/scrape.(*scrapePool).Sync\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/scrape.go:486\ngithub.com/prometheus/prometheus/scrape.(*Manager).reload.func1\n\tgithub.com/prometheus/prometheus@v0.38.0/scrape/manager.go:222\nruntime.goexit\n\truntime/asm_amd64.s:1571"}
github.com/prometheus/prometheus/scrape.(*scrapePool).Sync
	github.com/prometheus/prometheus@v0.38.0/scrape/scrape.go:488
github.com/prometheus/prometheus/scrape.(*Manager).reload.func1
	github.com/prometheus/prometheus@v0.38.0/scrape/manager.go:222
```
