#!/vendor/bin/sh

# Clean-up directories and files
find /data/data/com.alibaba.android.rimet/files/dingTalkTheOne/* -mtime +3 -delete
find /data/data/com.alibaba.android.rimet/files/nebulaInstallApps/* -mtime +3 -delete
find /data/data/com.tencent.mm/appbrand/ -mtime +3 -delete
find /data/data/com.tencent.mm/MicroMsg/*/appbrand/ -mtime +3 -delete
find /data/data/com.tencent.mm/MicroMsg/*/avatar/ -mtime +7 -delete
find /data/data/com.tencent.mm/MicroMsg/*/image2/ -mtime +7 -delete
find /data/data/com.tencent.mm/MicroMsg/*/video/ -mtime +7 -delete
find /data/data/com.tencent.mm/MicroMsg/*/voice2/ -mtime +7 -delete
find /data/data/com.tencent.mm/MicroMsg/appbrand/ -mtime +3 -delete
rm -rf /data/anr /data/bootchart /data/local/tests /data/local/traces /data/misc/a11ytrace /data/misc/bluetooth/logs /data/misc/boottrace /data/misc/nfc/logs /data/misc/snapshotctl_log /data/misc/trace /data/misc/update_engine /data/misc/update_engine_log /data/misc/wmtrace /data/ota /data/ota_package /data/system/dropbox /data/system/graphicsstats /data/system/heapdump /data/system/procexitstore /data/system/procstats /data/system/shutdown-checkpoints /data/tombstones /data/vendor/tombstones /data/backup/pending/* /data/data/*/cache/* /data/data/*/code_cache/* /data/local/tmp/* /data/media/*/*/.thumbnails/* /data/media/*/Android/data/*/cache/* /data/user_de/*/*/cache/* /data/user_de/*/*/code_cache/* /data/system/uiderrors.txt
