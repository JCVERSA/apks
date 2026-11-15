package com.transsion.sniffer_load.adapter.diffCallback;

import androidx.recyclerview.widget.DiffUtil;
import com.transsion.playercommon.whatsapp.WhatsappFile;
import java.util.List;

public class WhatsAppDiffCallback extends DiffUtil.Callback {
    public final List a;
    public final List b;

    public WhatsAppDiffCallback(List list, List list2) {
        this.a = list;
        this.b = list2;
    }

    @Override
    public boolean areContentsTheSame(int i, int i2) {
        return ((WhatsappFile) this.a.get(i)).equals(this.b.get(i2));
    }

    @Override
    public boolean areItemsTheSame(int i, int i2) {
        return ((WhatsappFile) this.a.get(i)).getFilePath().equals(((WhatsappFile) this.b.get(i2)).getFilePath());
    }

    @Override
    public int getNewListSize() {
        return this.b.size();
    }

    @Override
    public int getOldListSize() {
        return this.a.size();
    }
}
