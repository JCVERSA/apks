package com.transsion.sniffer_load.data;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import com.transsion.sniffer_load.webview.SniffWebViewContainer;

@Entity
public class WebPreviewRecord {

    @ColumnInfo
    public byte[] icon;

    @PrimaryKey(autoGenerate = true)
    public long id;

    @ColumnInfo
    public byte[] previewBitmap;

    @ColumnInfo
    public String title;

    @ColumnInfo
    public String webUrl;

    @Ignore
    public SniffWebViewContainer webview;

    public byte[] getIcon() {
        return this.icon;
    }

    public byte[] getPreviewBitmap() {
        return this.previewBitmap;
    }

    public String getTitle() {
        return this.title;
    }

    public String getWebUrl() {
        return this.webUrl;
    }

    public SniffWebViewContainer getWebview() {
        return this.webview;
    }

    public void setIcon(byte[] bArr) {
        this.icon = bArr;
    }

    public void setId(int i) {
        this.id = i;
    }

    public void setPreviewBitmap(byte[] bArr) {
        this.previewBitmap = bArr;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setWebUrl(String str) {
        this.webUrl = str;
    }

    public void setWebview(SniffWebViewContainer sniffWebViewContainer) {
        this.webview = sniffWebViewContainer;
    }
}
