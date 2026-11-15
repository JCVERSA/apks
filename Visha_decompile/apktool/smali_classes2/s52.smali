.class public final synthetic Ls52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La62$h$a;


# instance fields
.field public final synthetic a:La62;

.field public final synthetic b:La62$d;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(La62;La62$d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls52;->a:La62;

    iput-object p2, p0, Ls52;->b:La62$d;

    iput-boolean p3, p0, Ls52;->c:Z

    return-void
.end method


# virtual methods
.method public final a(ILzua;[I)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Ls52;->a:La62;

    iget-object v1, p0, Ls52;->b:La62$d;

    iget-boolean v2, p0, Ls52;->c:Z

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, La62;->r(La62;La62$d;ZILzua;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
