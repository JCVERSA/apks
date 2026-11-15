package com.transsion.sniffer_load.data;

import androidx.annotation.NonNull;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.sniffer_load.R;

public class WhatsBookmark extends Bookmark {
    public static final int ICON_WHATSAPP = R.drawable.icon_whatapp_logo;
    public static final String URL_WHATSAPP = "WhatsApp";
    public static final String WHATSAPP_GUIDE_CLOSED = "whatsapp_guide_closed";
    public static final String WHATSAPP_GUIDE_SHOWED = "whatsapp_guide_showed";

    public WhatsBookmark(@NonNull String str, String str2, String str3) {
        super(str, str2, str3);
    }
}
