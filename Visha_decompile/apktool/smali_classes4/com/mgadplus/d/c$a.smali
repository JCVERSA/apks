.class public Lcom/mgadplus/d/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/d/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/d/c;->a([Ljava/lang/Object;)Lcgd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mgadplus/d/c;


# direct methods
.method public constructor <init>(Lcom/mgadplus/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/d/c$a;->a:Lcom/mgadplus/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/d/c$a;->a:Lcom/mgadplus/d/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mgadplus/d/c;->b(Lcom/mgadplus/d/c;[Ljava/lang/Object;)V

    return-void
.end method
