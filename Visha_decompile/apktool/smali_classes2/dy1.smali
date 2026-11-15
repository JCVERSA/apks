.class public final synthetic Ldy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lnb$a;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldy1;->a:Lnb$a;

    iput p2, p0, Ldy1;->b:I

    iput-boolean p3, p0, Ldy1;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ldy1;->a:Lnb$a;

    iget v1, p0, Ldy1;->b:I

    iget-boolean p0, p0, Ldy1;->c:Z

    check-cast p1, Lnb;

    invoke-static {v0, v1, p0, p1}, Lwz1;->f0(Lnb$a;IZLnb;)V

    return-void
.end method
