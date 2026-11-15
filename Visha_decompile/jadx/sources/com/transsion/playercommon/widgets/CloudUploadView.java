package com.transsion.playercommon.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.transsion.dbdata.beans.VideoCloudDataLocal;
import com.transsion.playercommon.R;
import java.util.ArrayList;

public class CloudUploadView extends RelativeLayout {
    public Context b;
    public TextView c;
    public Button d;
    public ArrayList e;

    public CloudUploadView(Context context) {
        super(context);
        a(context);
    }

    public final void a(Context context) {
        this.b = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.bottom_bar_cloud_upload, (ViewGroup) this, true);
        this.c = (TextView) viewInflate.findViewById(R.id.tv_select_count);
        this.c.setText(context.getString(R.string.items, 0));
        this.d = (Button) viewInflate.findViewById(R.id.btn_upload);
    }

    public Button getBtnUploadView() {
        return this.d;
    }

    public ArrayList<VideoCloudDataLocal> getVideoDataList() {
        return this.e;
    }

    public void setVideoDataList(ArrayList<VideoCloudDataLocal> arrayList) {
        this.d.setEnabled((arrayList == null || arrayList.isEmpty()) ? false : true);
        this.e = arrayList;
    }

    public void updateCount(int i) {
        Context context = this.b;
        if (context == null) {
            return;
        }
        this.c.setText(context.getString(R.string.items, Integer.valueOf(i)));
    }

    public CloudUploadView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public CloudUploadView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }
}
