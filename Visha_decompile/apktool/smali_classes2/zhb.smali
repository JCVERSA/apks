.class public final synthetic Lzhb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lkib;

.field public final synthetic c:La9b;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lkib;La9b;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzhb;->b:Lkib;

    iput-object p2, p0, Lzhb;->c:La9b;

    iput p3, p0, Lzhb;->d:I

    iput-object p4, p0, Lzhb;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lzhb;->b:Lkib;

    iget-object v1, p0, Lzhb;->c:La9b;

    iget v2, p0, Lzhb;->d:I

    iget-object p0, p0, Lzhb;->e:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0}, Lkib;->i(Lkib;La9b;ILjava/lang/Runnable;)V

    return-void
.end method
