package app.fast.ssh;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.fast.ssh.adapter.FileAdapter;
import app.fast.ssh.core.connection.util.StreamReader;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ImportActivity extends AppCompatActivity {
    private static final String EXTENSION = ProtectedFastSSH.s("⽡");
    private List<String> paths;
    private RecyclerView recyclerView;
    private String root;

    private void handleIntentIf() {
        try {
            Uri data = getIntent().getData();
            String toEnd = StreamReader.readToEnd(ProtectedFastSSH.s("⽞").equals(data.getScheme()) ? getContentResolver().openInputStream(data) : new FileInputStream(new File(data.getEncodedPath())));
            Intent intent = new Intent(this, (Class<?>) MainActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString(ProtectedFastSSH.s("⽟"), toEnd);
            intent.putExtras(bundle);
            startActivity(intent);
            finish();
        } catch (Exception unused) {
        }
    }

    private void showFiles(String str) {
        ArrayList arrayList = new ArrayList();
        this.paths = new ArrayList();
        File file = new File(str);
        File[] fileArrListFiles = file.listFiles();
        if (!str.equals(this.root)) {
            arrayList.add(new FileAdapter.ImportItem(com.hatunnel.plus.R.drawable.l_res_0x7f0800d4, ProtectedFastSSH.s("⽠")));
            this.paths.add(file.getParent());
        }
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles);
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    arrayList.add(new FileAdapter.ImportItem(com.hatunnel.plus.R.drawable.l_res_0x7f0800d4, file2.getName()));
                    this.paths.add(file2.getPath());
                } else if (file2.getAbsolutePath().endsWith(ProtectedFastSSH.s("⽡"))) {
                    arrayList.add(new FileAdapter.ImportItem(com.hatunnel.plus.R.drawable.l_res_0x7f0800d3, file2.getName()));
                    this.paths.add(file2.getPath());
                }
            }
        }
        FileAdapter fileAdapter = new FileAdapter(arrayList);
        fileAdapter.setItemClickListener(new ImportActivity$$ExternalSyntheticLambda0(this));
        this.recyclerView.setAdapter(fileAdapter);
    }

    void m473lambda$showFiles$0$appfastsshImportActivity(int i) {
        String str = this.paths.get(i);
        if (new File(str).isDirectory()) {
            showFiles(str);
            return;
        }
        Intent intent = new Intent();
        intent.putExtra(ProtectedFastSSH.s("⽢"), str);
        setResult(-1, intent);
        finish();
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.hatunnel.plus.R.layout.l_res_0x7f0c0020);
        handleIntentIf();
        setSupportActionBar((Toolbar) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090284));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
        RecyclerView recyclerView = (RecyclerView) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901f4);
        this.recyclerView = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.recyclerView.setLayoutManager(new LinearLayoutManager(this));
        String path = Environment.getExternalStorageDirectory().getPath();
        this.root = path;
        showFiles(path);
    }
}
