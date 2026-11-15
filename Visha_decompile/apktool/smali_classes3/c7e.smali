.class public final synthetic Lc7e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxh1;


# static fields
.field public static final synthetic a:Lc7e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc7e;

    invoke-direct {v0}, Lc7e;-><init>()V

    sput-object v0, Lc7e;->a:Lc7e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lxda;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lxda;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "notification_data"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/google/android/gms/cloudmessaging/CloudMessage;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cloudmessaging/CloudMessage;-><init>(Landroid/content/Intent;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
