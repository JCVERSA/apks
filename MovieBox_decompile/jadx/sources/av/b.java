package av;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import com.transsion.usercenter.edit.api.RequstUserEntity;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.jvm.internal.Intrinsics;

public final class b extends av.a {

    private zu.a f15446b = new zu.a();

    public static final class a implements com.transsion.usercenter.edit.a {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            if (b.this.d()) {
                com.transsion.usercenter.edit.b bVar = (com.transsion.usercenter.edit.b) b.this.c();
                if (bVar != null) {
                    bVar.onEditProfile(false);
                }
                com.transsion.usercenter.edit.b bVar2 = (com.transsion.usercenter.edit.b) b.this.c();
                if (bVar2 != null) {
                    bVar2.onError(str, str2);
                }
            }
        }

        @Override
        public void b(String str, boolean z10, String bucket) {
            com.transsion.usercenter.edit.b bVar;
            Intrinsics.h(bucket, "bucket");
            if (!b.this.d() || (bVar = (com.transsion.usercenter.edit.b) b.this.c()) == null) {
                return;
            }
            bVar.onEditProfile(true);
        }
    }

    public static final class C0132b implements com.transsion.usercenter.edit.a {
        C0132b() {
        }

        @Override
        public void a(String str, String str2) {
            if (b.this.d()) {
                com.transsion.usercenter.edit.b bVar = (com.transsion.usercenter.edit.b) b.this.c();
                if (bVar != null) {
                    bVar.onEditProfile(false);
                }
                com.transsion.usercenter.edit.b bVar2 = (com.transsion.usercenter.edit.b) b.this.c();
                if (bVar2 != null) {
                    bVar2.onError(str, str2);
                }
            }
        }

        @Override
        public void b(UserInfo userInfo, boolean z10, String bucket) {
            Intrinsics.h(bucket, "bucket");
            if (b.this.d()) {
                if (userInfo != null) {
                    com.transsion.usercenter.edit.b bVar = (com.transsion.usercenter.edit.b) b.this.c();
                    if (bVar != null) {
                        bVar.onUserInfo(userInfo);
                        return;
                    }
                    return;
                }
                com.transsion.usercenter.edit.b bVar2 = (com.transsion.usercenter.edit.b) b.this.c();
                if (bVar2 != null) {
                    bVar2.onUserInfo(null);
                }
            }
        }
    }

    public static final class c implements uu.a {

        final com.transsion.usercenter.edit.a f15449a;

        c(com.transsion.usercenter.edit.a aVar) {
            this.f15449a = aVar;
        }

        @Override
        public void a(String localFilePath, long j10, long j11) {
            Intrinsics.h(localFilePath, "localFilePath");
        }

        @Override
        public void b(String localFilePath, String url, String bucket) {
            Intrinsics.h(localFilePath, "localFilePath");
            Intrinsics.h(url, "url");
            Intrinsics.h(bucket, "bucket");
            this.f15449a.b(url, false, bucket);
        }

        @Override
        public void c(String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType) {
            wf.a.C0922a.g(wf.a.f74274a, "uploadKey: " + str + "; clientMessage:" + str2 + "; serviceMessage: " + str3, false, 2, null);
            this.f15449a.a(TmcConstants.COLD_OPEN_TYPE, "clientMessage");
        }
    }

    @Override
    public void b() {
        super.b();
        uu.c.f73250a.b();
    }

    public final void e(RequstUserEntity entity) {
        Intrinsics.h(entity, "entity");
        zu.a aVar = this.f15446b;
        if (aVar != null) {
            aVar.a(entity, new a());
        }
    }

    public final void f() {
        zu.a aVar = this.f15446b;
        if (aVar != null) {
            aVar.b(new C0132b());
        }
    }

    public final void g(String imagePath, com.transsion.usercenter.edit.a apiCallback) {
        Intrinsics.h(imagePath, "imagePath");
        Intrinsics.h(apiCallback, "apiCallback");
        uu.c.f73250a.f(imagePath, UploadFileType.OBJECT_NAME_IMAGE, true, new c(apiCallback));
    }
}
