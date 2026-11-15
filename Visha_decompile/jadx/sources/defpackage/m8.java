package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.bt_download.R;
import com.transsion.btdownload.ui.AddFileAdapter;
import com.transsion.playercommon.fragments.SimpleBottomSheetDialog;
import com.transsion.playercommon.utils.views.HalfListDialogFragmentUtil;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import org.proninyaroslav.libretorrent.core.model.data.Priority;
import org.proninyaroslav.libretorrent.core.model.filetree.FilePriority;
import org.proninyaroslav.libretorrent.core.model.filetree.TorrentContentFileTree;

public abstract class m8 {
    public static int a;

    public class a implements View.OnClickListener {
        public final AddFileAdapter b;
        public final CheckBox c;
        public final TextView d;
        public final Context e;

        public class C0422a implements Consumer {
            public C0422a() {
            }

            @Override
            public void accept(TorrentContentFileTree torrentContentFileTree) {
                torrentContentFileTree.setChecked(a.this.c.isChecked());
            }
        }

        public a(AddFileAdapter addFileAdapter, CheckBox checkBox, TextView textView, Context context) {
            this.b = addFileAdapter;
            this.c = checkBox;
            this.d = textView;
            this.e = context;
        }

        @Override
        public void onClick(View view) {
            this.b.getData().stream().forEach(new C0422a());
            this.b.notifyDataSetChanged();
            m8.a = this.c.isChecked() ? this.b.getItemCount() : 0;
            TextView textView = this.d;
            Resources resources = this.e.getResources();
            int i = m8.a;
            textView.setText(resources.getString(i > 1 ? R.string.item : R.string.items, Integer.valueOf(i)));
        }
    }

    public class b implements BaseQuickAdapter.OnItemClickListener {
        public final TextView b;
        public final Context c;
        public final CheckBox d;
        public final AddFileAdapter e;

        public b(TextView textView, Context context, CheckBox checkBox, AddFileAdapter addFileAdapter) {
            this.b = textView;
            this.c = context;
            this.d = checkBox;
            this.e = addFileAdapter;
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            TorrentContentFileTree torrentContentFileTree = (TorrentContentFileTree) baseQuickAdapter.getData().get(i);
            boolean zIsChecked = torrentContentFileTree.isChecked();
            torrentContentFileTree.setChecked(!zIsChecked);
            int i2 = !zIsChecked ? m8.a + 1 : m8.a - 1;
            m8.a = i2;
            m8.a = i2;
            TextView textView = this.b;
            Resources resources = this.c.getResources();
            int i3 = m8.a;
            textView.setText(resources.getString(i3 > 1 ? R.string.item : R.string.items, Integer.valueOf(i3)));
            this.d.setChecked(m8.a == baseQuickAdapter.getItemCount());
            this.e.notifyItemChanged(i);
        }
    }

    public static void g(DialogFragment dialogFragment, List list, String str, View view) {
        dialogFragment.dismissAllowingStateLoss();
        Priority[] priorityArr = new Priority[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            TorrentContentFileTree torrentContentFileTree = (TorrentContentFileTree) it.next();
            int i2 = i + 1;
            priorityArr[i] = torrentContentFileTree.isChecked() ? Priority.DEFAULT : Priority.IGNORE;
            torrentContentFileTree.setPriority(new FilePriority(torrentContentFileTree.isChecked() ? Priority.DEFAULT : Priority.IGNORE), true);
            i = i2;
        }
        pk0.f().p(str, priorityArr);
    }

    public static void h(TorrentContentFileTree torrentContentFileTree) {
        int i;
        if (torrentContentFileTree.isChecked()) {
            i = a + 1;
            a = i;
        } else {
            i = a;
        }
        a = i;
    }

    public static void i(TextView textView, Context context, CheckBox checkBox, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (R.id.iv_bucket_fragment_checkBox == view.getId()) {
            TorrentContentFileTree torrentContentFileTree = (TorrentContentFileTree) baseQuickAdapter.getData().get(i);
            boolean zIsChecked = ((CheckBox) view).isChecked();
            torrentContentFileTree.setChecked(zIsChecked);
            int i2 = zIsChecked ? a + 1 : a - 1;
            a = i2;
            a = i2;
            Resources resources = context.getResources();
            int i3 = a;
            textView.setText(resources.getString(i3 > 1 ? R.string.item : R.string.items, Integer.valueOf(i3)));
            checkBox.setChecked(a == baseQuickAdapter.getItemCount());
        }
    }

    public static void j(DialogFragment dialogFragment, DialogInterface dialogInterface) {
        if (dialogFragment != null) {
            dialogFragment.dismissAllowingStateLoss();
        }
    }

    public static void k(final Context context, final List list, final List list2, final String str) {
        HalfListDialogFragmentUtil halfListDialogFragmentUtil = new HalfListDialogFragmentUtil(context, "add_torrent_file", R.layout.dialog_file_select);
        halfListDialogFragmentUtil.f(1);
        halfListDialogFragmentUtil.e(new HalfListDialogFragmentUtil.a() {
            @Override
            public final void a(SimpleBottomSheetDialog simpleBottomSheetDialog, View view) {
                m8.l(simpleBottomSheetDialog, view, context, list, list2, str);
            }
        });
        halfListDialogFragmentUtil.g();
    }

    public static void l(final DialogFragment dialogFragment, View view, final Context context, final List list, List list2, final String str) {
        final TextView textView = (TextView) view.findViewById(R.id.tv_select_title);
        ((Button) view.findViewById(R.id.bt_start_converting)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                m8.g(dialogFragment, list, str, view2);
            }
        });
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_select_list);
        AddFileAdapter addFileAdapter = new AddFileAdapter(context);
        addFileAdapter.setNewData(list2);
        final CheckBox checkBox = (CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox);
        checkBox.setOnClickListener(new a(addFileAdapter, checkBox, textView, context));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        linearLayoutManager.setOrientation(1);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(addFileAdapter);
        a = 0;
        list2.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                m8.h((TorrentContentFileTree) obj);
            }
        });
        checkBox.setChecked(a == list2.size());
        Resources resources = context.getResources();
        int i = a;
        textView.setText(resources.getString(i > 1 ? R.string.item : R.string.items, Integer.valueOf(i)));
        addFileAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i2) {
                m8.i(textView, context, checkBox, baseQuickAdapter, view2, i2);
            }
        });
        addFileAdapter.setOnItemClickListener(new b(textView, context, checkBox, addFileAdapter));
        dialogFragment.getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                m8.j(dialogFragment, dialogInterface);
            }
        });
    }
}
