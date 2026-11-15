package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.format.Formatter;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.audio.R;
import com.transsion.cloudcore.db.CloudTaskDatabase;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.cloudcore.db.CloudTransferRecordManager;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.InfoBean;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.InputDialog;
import com.transsion.widgetslib.dialog.d;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Predicate;

public class t6b implements View.OnClickListener {
    public CloudTaskEntity b;
    public Context c;
    public b d;
    public d e;
    public InputDialog f;

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            String strTrim = editable.toString().trim();
            t6b.this.H((strTrim.isEmpty() || t6b.this.b.fileName.equals(strTrim)) ? false : true);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public interface b {
        void a(double d);

        void b(boolean z);

        void c(boolean z, String str);

        void d();
    }

    public t6b(Context context, CloudTaskEntity cloudTaskEntity) {
        this.b = cloudTaskEntity;
        this.c = context;
    }

    public static void B(DialogInterface dialogInterface, int i) {
    }

    public static void F(EditText editText, TextView textView) {
    }

    public static void z(CheckBox checkBox, View view) {
        checkBox.setChecked(!checkBox.isChecked());
    }

    public final void A(List list, boolean z, CheckBox checkBox, DialogInterface dialogInterface, int i) {
        r(list, z && checkBox.isChecked());
    }

    public final void D(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            ToastUtils.s(R.string.empty_text);
        } else {
            G(str);
        }
    }

    public final void E(DialogInterface dialogInterface, int i) {
        d dVar = this.e;
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    public final void G(final String str) {
        BaseActivity baseActivity = (BaseActivity) this.c;
        mc7.K(baseActivity).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.v(str, (BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.w(str, (Integer) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.x(str, (Throwable) obj);
            }
        });
    }

    public final void H(boolean z) {
        Button buttonE;
        d dVar = this.e;
        if (dVar == null || (buttonE = dVar.e(-1)) == null) {
            return;
        }
        buttonE.setEnabled(z);
    }

    public void I(final List list) {
        if (list == null) {
            return;
        }
        final boolean zAnyMatch = list.stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((CloudTaskEntity) obj).isLocalFileExist;
            }
        });
        View viewInflate = LayoutInflater.from(this.c).inflate(com.transsion.sniffer_load.R.layout.dialog_delete_task, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(com.transsion.sniffer_load.R.id.tv_title);
        TextView textView2 = (TextView) viewInflate.findViewById(com.transsion.sniffer_load.R.id.tv_info);
        final CheckBox checkBox = (CheckBox) viewInflate.findViewById(com.transsion.sniffer_load.R.id.cb_delete);
        if (zAnyMatch) {
            textView2.setVisibility(0);
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    t6b.z(checkBox, view);
                }
            });
            textView2.setText(com.transsion.playercommon.R.string.visha_delete_local_file_also);
        } else {
            textView2.setVisibility(8);
            checkBox.setVisibility(8);
        }
        textView.setText(list.size() > 1 ? this.c.getString(com.transsion.playercommon.R.string.visha_delete_transfer_records_confirm, Integer.valueOf(list.size())) : this.c.getString(com.transsion.playercommon.R.string.visha_delete_transfer_record_confirm));
        new d.a(this.c).E(viewInflate).u(com.transsion.playercommon.R.string.delete, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.A(list, zAnyMatch, checkBox, dialogInterface, i);
            }
        }).m(com.transsion.playercommon.R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                t6b.B(dialogInterface, i);
            }
        }).a().show();
    }

    public void J() {
        if (this.b == null) {
            return;
        }
        View viewInflate = LayoutInflater.from(this.c).inflate(com.transsion.playercommon.R.layout.dialog_details, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(com.transsion.playercommon.R.id.rv_bucket_fragment_info);
        FileOperateUtils.InfoAdapter infoAdapter = new FileOperateUtils.InfoAdapter(com.transsion.playercommon.R.layout.item_bucket_fragment_info);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(this.c));
        recyclerView.setAdapter(infoAdapter);
        ArrayList arrayList = new ArrayList();
        String str = this.b.fileName;
        if (str != null) {
            InfoBean infoBean = new InfoBean(com.transsion.playercommon.R.string.name, str, 0L);
            infoBean.setMultiLines(true);
            arrayList.add(infoBean);
        }
        String str2 = this.b.mimeType;
        if (str2 != null) {
            arrayList.add(new InfoBean(com.transsion.playercommon.R.string.type, str2, 0L));
        }
        long j = this.b.duration;
        if (j != 0) {
            arrayList.add(new InfoBean(com.transsion.playercommon.R.string.duration, wna.c(j), 0L));
        }
        long j2 = this.b.fileSize;
        if (j2 != 0) {
            arrayList.add(new InfoBean(com.transsion.playercommon.R.string.size, Formatter.formatFileSize(this.c, j2), 0L));
        }
        long j3 = this.b.createTime;
        if (j3 != 0) {
            arrayList.add(new InfoBean(com.transsion.playercommon.R.string.date, wna.i(j3 / 1000), 0L));
        }
        try {
            String str3 = this.b.localFilePath;
            if (str3 != null) {
                int iLastIndexOf = str3.lastIndexOf("/");
                String str4 = this.b.localFilePath;
                if (iLastIndexOf == -1) {
                    iLastIndexOf = str4.length();
                }
                InfoBean infoBean2 = new InfoBean(com.transsion.playercommon.R.string.path, str4.substring(0, iLastIndexOf), 0L);
                infoBean2.setMultiLines(true);
                arrayList.add(infoBean2);
            }
        } catch (Exception unused) {
        }
        infoAdapter.setNewData(arrayList);
        new d.a(this.c).A(com.transsion.playercommon.R.string.info).E(viewInflate).u(com.transsion.playercommon.R.string.ok, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).c(true).F();
    }

    public void K() {
        InputDialog inputDialogR = new InputDialog(this.c).A(R.string.rename).s(R.string.Save, new InputDialog.g() {
            @Override
            public final void a(String str) {
                this.a.D(str);
            }
        }).x(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.E(dialogInterface, i);
            }
        }).z(true).r(false);
        this.f = inputDialogR;
        inputDialogR.v(this.b.fileName, "", 61, new InputDialog.f() {
            @Override
            public final void a(EditText editText, TextView textView) {
                t6b.F(editText, textView);
            }
        });
        this.f.setTextWatcher(new a());
        d dVarM = this.f.m();
        this.e = dVarM;
        dVarM.show();
        this.f.w(false);
        H(false);
    }

    @Override
    public void onClick(View view) {
    }

    public final boolean q(String str) {
        File file = new File(str);
        if (file.canWrite() && file.delete()) {
            return true;
        }
        boolean zF = nx8.f(this.c, file);
        if (file.exists()) {
            return false;
        }
        return zF;
    }

    public final void r(final List list, final boolean z) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.d();
        }
        mc7.K(list).g(((BaseActivity) this.c).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.s(list, z, (List) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.t((Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.u((Throwable) obj);
            }
        });
    }

    public final Boolean s(List list, boolean z, List list2) {
        String str;
        CopyOnWriteArrayList<CloudTaskEntity> copyOnWriteArrayList = new CopyOnWriteArrayList(list);
        int i = 0;
        for (CloudTaskEntity cloudTaskEntity : copyOnWriteArrayList) {
            CloudTransferRecordManager.getInstance().deleteTaskByTaskId(cloudTaskEntity.taskId);
            if (z && (str = cloudTaskEntity.localFilePath) != null) {
                q(str);
            }
            i++;
            b bVar = this.d;
            if (bVar != null) {
                bVar.a(((double) i) / ((double) copyOnWriteArrayList.size()));
            }
        }
        return Boolean.TRUE;
    }

    public void setOnOperateListener(b bVar) {
        this.d = bVar;
    }

    public final void t(Boolean bool) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.b(true);
        }
        Log.e("TransferRecordOperateUtils", "deleteTask finished " + bool);
    }

    public final void u(Throwable th) {
        Log.e("TransferRecordOperateUtils", "deleteTask " + th);
        b bVar = this.d;
        if (bVar != null) {
            bVar.b(false);
        }
    }

    public final Integer v(String str, BaseActivity baseActivity) {
        return Integer.valueOf(CloudTaskDatabase.getInstance().cloudTaskDao().updateTaskFileName(this.b.taskId, str, System.currentTimeMillis()));
    }

    public final void w(String str, Integer num) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.c(true, str);
        }
    }

    public final void x(String str, Throwable th) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.c(false, str);
        }
    }
}
