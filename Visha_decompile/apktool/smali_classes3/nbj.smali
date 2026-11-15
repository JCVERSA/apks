.class public final synthetic Lnbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lraj;

.field public final synthetic b:Lsmj;

.field public final synthetic c:Lxmj;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lraj;Lsmj;Lxmj;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbj;->a:Lraj;

    iput-object p2, p0, Lnbj;->b:Lsmj;

    iput-object p3, p0, Lnbj;->c:Lxmj;

    iput-object p4, p0, Lnbj;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Lnbj;->e:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Ltaj;

    iget-object v1, p0, Lnbj;->a:Lraj;

    iget-object v2, p0, Lnbj;->b:Lsmj;

    iget-object v3, p0, Lnbj;->c:Lxmj;

    iget-object v4, p0, Lnbj;->d:Ljava/io/IOException;

    iget-boolean v5, p0, Lnbj;->e:Z

    invoke-interface/range {v0 .. v5}, Ltaj;->d(Lraj;Lsmj;Lxmj;Ljava/io/IOException;Z)V

    return-void
.end method
