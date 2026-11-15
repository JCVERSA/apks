.class public final Lswe;
.super Leff;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lywe;


# direct methods
.method public constructor <init>(Lywe;)V
    .locals 0

    iput-object p1, p0, Lswe;->c:Lywe;

    invoke-direct {p0}, Leff;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lswe;->c:Lywe;

    invoke-static {v0}, Lywe;->e(Lywe;)V

    invoke-super {p0, p1}, Leff;->cancel(Z)Z

    move-result p0

    return p0
.end method
