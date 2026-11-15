.class public Lcom/transsion/kolun/oxygenbus/common/BinderCursor;
.super Landroid/database/MatrixCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/kolun/oxygenbus/common/BinderCursor$BinderParcelable;
    }
.end annotation


# static fields
.field static final KEY_BINDER:Ljava/lang/String; = "binder"


# instance fields
.field mBinderExtra:Landroid/os/Bundle;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/BinderCursor;->mBinderExtra:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    new-instance p1, Lcom/transsion/kolun/oxygenbus/common/BinderCursor$BinderParcelable;

    invoke-direct {p1, p2}, Lcom/transsion/kolun/oxygenbus/common/BinderCursor$BinderParcelable;-><init>(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/BinderCursor;->mBinderExtra:Landroid/os/Bundle;

    const-string p2, "binder"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/BinderCursor;->mBinderExtra:Landroid/os/Bundle;

    return-object p0
.end method
