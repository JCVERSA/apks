.class public final Lomj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lanj;


# instance fields
.field public final a:Lnmj;

.field public final b:Lvge;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh9e;)V
    .locals 2

    new-instance v0, Legi;

    invoke-direct {v0, p1}, Legi;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lrge;

    invoke-direct {p1}, Lrge;-><init>()V

    iput-object p1, p0, Lomj;->b:Lvge;

    new-instance v1, Lnmj;

    invoke-direct {v1, p2, p1}, Lnmj;-><init>(Lh9e;Lvge;)V

    iput-object v1, p0, Lomj;->a:Lnmj;

    invoke-virtual {v1, v0}, Lnmj;->a(Lt8i;)V

    return-void
.end method
