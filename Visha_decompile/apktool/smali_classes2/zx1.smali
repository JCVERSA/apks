.class public final synthetic Lzx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lnb$a;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx1;->a:Lnb$a;

    iput p2, p0, Lzx1;->b:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lzx1;->a:Lnb$a;

    iget p0, p0, Lzx1;->b:F

    check-cast p1, Lnb;

    invoke-static {v0, p0, p1}, Lwz1;->O(Lnb$a;FLnb;)V

    return-void
.end method
