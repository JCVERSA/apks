.class public final Lkff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Liff;

.field public final synthetic b:Lgff;


# direct methods
.method public constructor <init>(Llff;Liff;Lgff;)V
    .locals 0

    iput-object p2, p0, Lkff;->a:Liff;

    iput-object p3, p0, Lkff;->b:Lgff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lkff;->b:Lgff;

    invoke-interface {p0}, Lgff;->zza()V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkff;->a:Liff;

    invoke-interface {p0, p1}, Liff;->zza(Ljava/lang/Object;)V

    return-void
.end method
