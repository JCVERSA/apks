.class final Lcom/google/android/gms/common/api/internal/zaak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Ltzd;


# direct methods
.method public constructor <init>(Ltzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 p0, 0x0

    invoke-static {p0}, Ltzd;->b(Ltzd;)Laj4;

    move-result-object v0

    invoke-static {p0}, Ltzd;->a(Ltzd;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Laj4;->a(Landroid/content/Context;)V

    return-void
.end method
