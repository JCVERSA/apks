package com.transsion.sniffer_load;

import com.transsion.sniffer_load.okdownload.NewDownloadTask;
import java.util.Comparator;
import java.util.Map;

class DownloadService$DownloadBinder$1 implements Comparator<Map.Entry<String, NewDownloadTask>> {
    final DownloadService.b this$1;

    public DownloadService$DownloadBinder$1(DownloadService.b bVar) {
        this.this$1 = bVar;
    }

    @Override
    public int compare(Map.Entry<String, NewDownloadTask> entry, Map.Entry<String, NewDownloadTask> entry2) {
        NewDownloadTask value = entry.getValue();
        NewDownloadTask value2 = entry2.getValue();
        if (value == null && value2 == null) {
            return entry.getKey().compareTo(entry2.getKey());
        }
        if (value == null) {
            return 1;
        }
        if (value2 == null) {
            return -1;
        }
        if (value.progress == null && value2.progress == null) {
            return entry.getKey().compareTo(entry2.getKey());
        }
        if (value.progress == null) {
            return 1;
        }
        if (value2.progress == null) {
            return -1;
        }
        long j = value.progress.date;
        long j2 = value2.progress.date;
        if (j > j2) {
            return -1;
        }
        if (j < j2) {
            return 1;
        }
        return entry.getKey().compareTo(entry2.getKey());
    }
}
