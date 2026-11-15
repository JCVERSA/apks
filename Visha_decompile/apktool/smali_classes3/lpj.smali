.class public final Llpj;
.super Lpmj;
.source "SourceFile"


# instance fields
.field public final c:Lcme;


# direct methods
.method public constructor <init>(Lw4f;Lcme;)V
    .locals 0

    invoke-direct {p0, p1}, Lpmj;-><init>(Lw4f;)V

    iput-object p2, p0, Llpj;->c:Lcme;

    return-void
.end method


# virtual methods
.method public final e(ILe4f;J)Le4f;
    .locals 1

    iget-object v0, p0, Lpmj;->b:Lw4f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw4f;->e(ILe4f;J)Le4f;

    iget-object p0, p0, Llpj;->c:Lcme;

    iput-object p0, p2, Le4f;->c:Lcme;

    iget-object p0, p0, Lcme;->b:Lxge;

    const/4 p0, 0x0

    iput-object p0, p2, Le4f;->b:Ljava/lang/Object;

    return-object p2
.end method
