package app.fast.ssh;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import app.fast.ssh.adapter.AppsAdapter;
import app.fast.ssh.util.ApkInfoExtractor;
import com.google.android.material.switchmaterial.SwitchMaterial;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class AppsFragment_Backup extends Fragment {
    private AppsAdapter adapter;
    private SwitchMaterial bypass;
    private RecyclerView recycler;
    private View wait_screen;

    private static class AdapterTask extends AsyncTask<String, String, String> {
        private final WeakReference<AppsFragment_Backup> weakReference;

        class AnonymousClass1 implements Comparator<AppsAdapter.App> {
            AnonymousClass1() {
            }

            public int compare2(AppsAdapter.App app2, AppsAdapter.App app3) {
                return app2.appName.compareToIgnoreCase(app3.appName);
            }

            @Override
            public int compare(AppsAdapter.App app2, AppsAdapter.App app3) {
                return compare2(app2, app3);
            }
        }

        private AdapterTask(AppsFragment_Backup appsFragment_Backup) {
            this.weakReference = new WeakReference<>(appsFragment_Backup);
        }

        @Override
        protected String doInBackground(String[] strArr) {
            return doInBackground2(strArr);
        }

        protected String doInBackground2(String... strArr) {
            String strS = ProtectedFastSSH.s("ⷸ");
            ArrayList arrayList = new ArrayList();
            Context context = this.weakReference.get().getContext();
            Intent intent = new Intent(ProtectedFastSSH.s("ⷹ"), (Uri) null);
            intent.addCategory(ProtectedFastSSH.s("ⷺ"));
            intent.setFlags(270532608);
            PackageManager packageManager = context.getPackageManager();
            int i = 0;
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            try {
                i = packageManager.getApplicationInfo(strS, 128).uid;
                arrayList.add(new AppsAdapter.App(ApkInfoExtractor.getAppIcon(strS, context), ApkInfoExtractor.getAppName(strS, context), strS));
            } catch (Exception unused) {
            }
            Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
            while (it.hasNext()) {
                String str = it.next().activityInfo.applicationInfo.packageName;
                try {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
                    if (!str.equals(context.getPackageName()) && packageManager.checkPermission(ProtectedFastSSH.s("ⷻ"), str) == 0 && applicationInfo.uid != i) {
                        arrayList.add(new AppsAdapter.App(ApkInfoExtractor.getAppIcon(str, context), ApkInfoExtractor.getAppName(str, context), str));
                    }
                } catch (Exception unused2) {
                }
            }
            Collections.sort(arrayList, new AnonymousClass1());
            AppsFragment_Backup.access$002(this.weakReference.get(), new AppsAdapter(context, arrayList));
            return "";
        }

        @Override
        protected void onPostExecute(String str) {
            onPostExecute2(str);
        }

        protected void onPostExecute2(String str) {
            super.onPostExecute(str);
            AppsFragment_Backup.access$100(this.weakReference.get()).setVisibility(8);
            AppsFragment_Backup.access$200(this.weakReference.get()).setEnabled(true);
            AppsFragment_Backup.access$300(this.weakReference.get()).setAdapter(AppsFragment_Backup.access$000(this.weakReference.get()));
            AppsFragment_Backup.access$300(this.weakReference.get()).setVisibility(0);
        }
    }

    static AppsAdapter access$000(AppsFragment_Backup appsFragment_Backup) {
        return appsFragment_Backup.adapter;
    }

    static AppsAdapter access$002(AppsFragment_Backup appsFragment_Backup, AppsAdapter appsAdapter) {
        appsFragment_Backup.adapter = appsAdapter;
        return appsAdapter;
    }

    static View access$100(AppsFragment_Backup appsFragment_Backup) {
        return appsFragment_Backup.wait_screen;
    }

    static SwitchMaterial access$200(AppsFragment_Backup appsFragment_Backup) {
        return appsFragment_Backup.bypass;
    }

    static RecyclerView access$300(AppsFragment_Backup appsFragment_Backup) {
        return appsFragment_Backup.recycler;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(com.hatunnel.plus.R.layout.l_res_0x7f0c003d, viewGroup, false);
    }
}
