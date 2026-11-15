package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.bt_download.R;
import com.transsion.btdownload.ui.DownloadableFileItem;
import com.transsion.btdownload.ui.FileSelectAdapter;
import com.transsion.playercommon.fragments.SimpleBottomSheetDialog;
import com.transsion.playercommon.utils.views.HalfListDialogFragmentUtil;
import com.transsion.utils.ToastUtils;
import java.util.List;
import java.util.function.Consumer;
import org.proninyaroslav.libretorrent.core.exception.FreeSpaceException;

public abstract class tra {
    public static int a;

    public static void i(DialogFragment dialogFragment, View view) {
        hb0.markTrackSingle("vd_dl_brower_rp_bt_list_dl_cl", hb0.KEY_NAME_NUM, Integer.valueOf(a));
        try {
            pk0.f().s();
            ToastUtils.s(R.string.add_to_download_list);
            dialogFragment.dismissAllowingStateLoss();
        } catch (FreeSpaceException e) {
            ToastUtils.s(R.string.not_enough_storage);
            Log.e("visha_TorrentDialogUtils", "startDownload FreeSpaceException:" + e.getMessage());
        } catch (Exception e2) {
            Log.e("visha_TorrentDialogUtils", "startDownload error:" + e2.getMessage());
        }
    }

    public static void j(CheckBox checkBox, DownloadableFileItem downloadableFileItem) {
        downloadableFileItem.selected = checkBox.isChecked();
    }

    public static void k(FileSelectAdapter fileSelectAdapter, final CheckBox checkBox, TextView textView, Context context, Button button, View view) {
        fileSelectAdapter.getData().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                tra.j(checkBox, (DownloadableFileItem) obj);
            }
        });
        fileSelectAdapter.notifyDataSetChanged();
        a = checkBox.isChecked() ? fileSelectAdapter.getItemCount() : 0;
        Resources resources = context.getResources();
        int i = a;
        textView.setText(resources.getString(i > 1 ? R.string.item : R.string.items, Integer.valueOf(i)));
        button.setEnabled(a > 0);
    }

    public static void l(TextView textView, Context context, CheckBox checkBox, Button button, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (R.id.iv_bucket_fragment_checkBox == view.getId()) {
            DownloadableFileItem downloadableFileItem = (DownloadableFileItem) baseQuickAdapter.getData().get(i);
            boolean zIsChecked = ((CheckBox) view).isChecked();
            downloadableFileItem.selected = zIsChecked;
            int i2 = zIsChecked ? a + 1 : a - 1;
            a = i2;
            a = i2;
            Resources resources = context.getResources();
            int i3 = a;
            textView.setText(resources.getString(i3 > 1 ? R.string.item : R.string.items, Integer.valueOf(i3)));
            checkBox.setChecked(a == baseQuickAdapter.getItemCount());
            button.setEnabled(a > 0);
        }
    }

    public static void m(FileSelectAdapter fileSelectAdapter, TextView textView, Context context, CheckBox checkBox, Button button, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        boolean z = fileSelectAdapter.getItem(i).selected;
        fileSelectAdapter.getItem(i).selected = !z;
        fileSelectAdapter.notifyItemChanged(i);
        int i2 = !z ? a + 1 : a - 1;
        a = i2;
        a = i2;
        Resources resources = context.getResources();
        int i3 = a;
        textView.setText(resources.getString(i3 > 1 ? R.string.item : R.string.items, Integer.valueOf(i3)));
        checkBox.setChecked(a == baseQuickAdapter.getItemCount());
        button.setEnabled(a > 0);
    }

    public static void n(DialogFragment dialogFragment, DialogInterface dialogInterface) {
        if (dialogFragment != null) {
            dialogFragment.dismissAllowingStateLoss();
        }
    }

    public static void o(final Context context, final List list) {
        HalfListDialogFragmentUtil halfListDialogFragmentUtil = new HalfListDialogFragmentUtil(context, "bt_file_select", R.layout.dialog_file_select);
        halfListDialogFragmentUtil.f(1);
        halfListDialogFragmentUtil.e(new HalfListDialogFragmentUtil.a() {
            @Override
            public final void a(SimpleBottomSheetDialog simpleBottomSheetDialog, View view) {
                tra.p(simpleBottomSheetDialog, view, context, list);
            }
        });
        halfListDialogFragmentUtil.g();
        hb0.markDirect("vd_dl_brower_rp_bt_list_show");
    }

    public static void p(final DialogFragment dialogFragment, View view, final Context context, List list) {
        final TextView textView = (TextView) view.findViewById(R.id.tv_select_title);
        final Button button = (Button) view.findViewById(R.id.bt_start_converting);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                tra.i(dialogFragment, view2);
            }
        });
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_select_list);
        final FileSelectAdapter fileSelectAdapter = new FileSelectAdapter(context);
        fileSelectAdapter.setNewData(list);
        final CheckBox checkBox = (CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox);
        checkBox.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                tra.k(fileSelectAdapter, checkBox, textView, context, button, view2);
            }
        });
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        linearLayoutManager.setOrientation(1);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(fileSelectAdapter);
        a = list.size();
        Resources resources = context.getResources();
        int i = a;
        textView.setText(resources.getString(i > 1 ? R.string.item : R.string.items, Integer.valueOf(i)));
        fileSelectAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i2) {
                tra.l(textView, context, checkBox, button, baseQuickAdapter, view2, i2);
            }
        });
        fileSelectAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i2) {
                tra.m(fileSelectAdapter, textView, context, checkBox, button, baseQuickAdapter, view2, i2);
            }
        });
        dialogFragment.getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                tra.n(dialogFragment, dialogInterface);
            }
        });
    }
}
