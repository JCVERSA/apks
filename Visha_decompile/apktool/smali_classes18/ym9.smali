.class public final Lym9;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lym9$a;
    }
.end annotation


# instance fields
.field public final a:Lmn9;

.field public final b:Lzf1;


# direct methods
.method public constructor <init>(Lmn9;Lzf1;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lym9;->a:Lmn9;

    iput-object p2, p0, Lym9;->b:Lzf1;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 2

    iget-object v0, p0, Lym9;->a:Lmn9;

    new-instance v1, Lym9$a;

    invoke-direct {v1, p0, p1}, Lym9$a;-><init>(Lym9;Lin9;)V

    invoke-interface {v0, v1}, Lmn9;->a(Lin9;)V

    return-void
.end method
