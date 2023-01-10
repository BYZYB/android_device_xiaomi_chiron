#!/vendor/bin/sh

# Remove useless directories and files
find /data/data/com.alibaba.android.rimet/files/dingTalkTheOne/* -mtime +3 -exec rm -rf {} \;
find /data/data/com.alibaba.android.rimet/files/nebulaInstallApps/* -mtime +3 -exec rm -rf {} \;
find /data/data/com.tencent.mm/MicroMsg/*/appbrand/* -mtime +3 -exec rm -rf {} \;
find /data/data/com.tencent.mm/MicroMsg/*/avatar/* -mtime +7 -exec rm -rf {} \;
find /data/data/com.tencent.mm/MicroMsg/*/image2/* -mtime +7 -exec rm -rf {} \;
find /data/data/com.tencent.mm/MicroMsg/*/video/* -mtime +7 -exec rm -rf {} \;
find /data/data/com.tencent.mm/MicroMsg/*/voice2/* -mtime +7 -exec rm -rf {} \;
find /data/media/0/Android/data/com.tencent.mm/MicroMsg/*/* -mtime +3 -exec rm -rf {} \;
rm -rf /data/anr /data/bootchart /data/local/tests /data/local/traces /data/misc/a11ytrace /data/misc/boottrace /data/misc/snapshotctl_log /data/misc/trace /data/misc/update_engine /data/misc/update_engine_log /data/misc/wmtrace /data/system/dropbox /data/system/heapdump /data/system/uiderrors.txt /data/tombstones /data/vendor/tombstones
rm -rf /data/backup/pending/* /data/data/*/cache/* /data/data/*/code_cache/* /data/local/tmp/* /data/media/0/*/.thumbnails/* /data/media/0/Android/data/*/cache/* /data/user_de/*/*/cache/* /data/user_de/*/*/code_cache/*
