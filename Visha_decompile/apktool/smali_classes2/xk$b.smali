.class public final Lxk$b;
.super Lxk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lqw7;


# direct methods
.method public constructor <init>(ILqw7;)V
    .locals 0

    invoke-direct {p0, p1}, Lxk;-><init>(I)V

    iput-object p2, p0, Lxk$b;->b:Lqw7;

    return-void
.end method
