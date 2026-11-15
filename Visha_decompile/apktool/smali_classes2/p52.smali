.class public final synthetic Lp52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La62$h$a;


# instance fields
.field public final synthetic a:La62$d;

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>(La62$d;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp52;->a:La62$d;

    iput-object p2, p0, Lp52;->b:[I

    return-void
.end method


# virtual methods
.method public final a(ILzua;[I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lp52;->a:La62$d;

    iget-object p0, p0, Lp52;->b:[I

    invoke-static {v0, p0, p1, p2, p3}, La62;->n(La62$d;[IILzua;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
