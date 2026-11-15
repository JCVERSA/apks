.class public final synthetic Lvv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:Lin5;

.field public final synthetic c:Lih6;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lnb$a;Lin5;Lih6;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvv1;->a:Lnb$a;

    iput-object p2, p0, Lvv1;->b:Lin5;

    iput-object p3, p0, Lvv1;->c:Lih6;

    iput-object p4, p0, Lvv1;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Lvv1;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lvv1;->a:Lnb$a;

    iget-object v1, p0, Lvv1;->b:Lin5;

    iget-object v2, p0, Lvv1;->c:Lih6;

    iget-object v3, p0, Lvv1;->d:Ljava/io/IOException;

    iget-boolean v4, p0, Lvv1;->e:Z

    move-object v5, p1

    check-cast v5, Lnb;

    invoke-static/range {v0 .. v5}, Lwz1;->M(Lnb$a;Lin5;Lih6;Ljava/io/IOException;ZLnb;)V

    return-void
.end method
