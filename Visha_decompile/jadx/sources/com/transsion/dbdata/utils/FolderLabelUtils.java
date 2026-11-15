package com.transsion.dbdata.utils;

import android.content.Context;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.R;
import com.transsion.dbdata.beans.FolderLabelItem;
import com.transsion.dbdata.utils.FolderLabelUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public abstract class FolderLabelUtils {
    public static final List a = new ArrayList();

    public static FolderLabelItem b(final String str, String str2, final boolean z) {
        FolderLabelItem folderLabelItem = null;
        for (FolderLabelItem folderLabelItem2 : (List) c().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return FolderLabelUtils.d(z, str, (FolderLabelItem) obj);
            }
        }).collect(Collectors.toList())) {
            String str3 = folderLabelItem2.matchName;
            if (str3 == null || "".equals(str3.trim())) {
                folderLabelItem = folderLabelItem2;
            } else if (str2.startsWith(folderLabelItem2.matchName)) {
                return folderLabelItem2;
            }
        }
        return folderLabelItem;
    }

    public static List c() {
        return a;
    }

    public static boolean d(boolean z, String str, FolderLabelItem folderLabelItem) {
        if (z) {
            return folderLabelItem.getMatchPath().equalsIgnoreCase(str) && "".equals(folderLabelItem.getMatchName().trim());
        }
        return folderLabelItem.getMatchPath().equalsIgnoreCase(str);
    }

    public static void e(Context context) {
        a.addAll((List) new Gson().fromJson(context.getResources().getString(R.string.default_folder_label_list), new TypeToken<List<FolderLabelItem>>() {
        }.getType()));
    }
}
