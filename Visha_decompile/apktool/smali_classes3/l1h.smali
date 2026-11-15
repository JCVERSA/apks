.class public final synthetic Ll1h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0g;


# instance fields
.field public final synthetic b:Lejf;


# direct methods
.method public synthetic constructor <init>(Lejf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1h;->b:Lejf;

    return-void
.end method


# virtual methods
.method public final zzs()V
    .locals 1

    iget-object p0, p0, Ll1h;->b:Lejf;

    invoke-interface {p0}, Lejf;->zzN()Likf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lejf;->zzN()Likf;

    move-result-object p0

    invoke-interface {p0}, Likf;->zzs()V

    :cond_0
    return-void
.end method
