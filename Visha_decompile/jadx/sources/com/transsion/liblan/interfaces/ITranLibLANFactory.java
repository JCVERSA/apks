package com.transsion.liblan.interfaces;

import android.content.Context;
import java.util.List;

public interface ITranLibLANFactory extends ITranComponentFactory {
    public static final String FACTORY_ID = "com.transsion.liblan.interfaces.ITranLibLANFactory";

    ITranLibLAN getLibLanFromContext(Context context);

    ITranLibLAN getLibLanFromOptions(Context context, List<String> list);
}
