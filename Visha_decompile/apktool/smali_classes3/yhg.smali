.class public final Lyhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ln3f;


# direct methods
.method public constructor <init>(Lhig;Ljava/lang/String;Ln3f;)V
    .locals 0

    iput-object p2, p0, Lyhg;->a:Ljava/lang/String;

    iput-object p3, p0, Lyhg;->b:Ln3f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lejf;

    iget-object v0, p0, Lyhg;->a:Ljava/lang/String;

    iget-object p0, p0, Lyhg;->b:Ln3f;

    invoke-interface {p1, v0, p0}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    return-void
.end method
