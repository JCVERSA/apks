.class public final Lg96;
.super Lb96;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg96$a;
    }
.end annotation


# instance fields
.field public final b:Lmn9;

.field public final c:Lie8;


# direct methods
.method public constructor <init>(Lmn9;Lie8;)V
    .locals 0

    invoke-direct {p0}, Lb96;-><init>()V

    iput-object p1, p0, Lg96;->b:Lmn9;

    iput-object p2, p0, Lg96;->c:Lie8;

    return-void
.end method


# virtual methods
.method public j(Lk96;)V
    .locals 2

    iget-object v0, p0, Lg96;->b:Lmn9;

    new-instance v1, Lg96$a;

    iget-object p0, p0, Lg96;->c:Lie8;

    invoke-direct {v1, p1, p0}, Lg96$a;-><init>(Lk96;Lie8;)V

    invoke-interface {v0, v1}, Lmn9;->a(Lin9;)V

    return-void
.end method
