.class public Lcom/transsion/push/utils/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/push/utils/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/a;->b(ILjava/util/List;Lcom/transsion/push/utils/a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/HashMap;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic c:Lcom/transsion/push/utils/a$d;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/transsion/push/utils/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/utils/a$a;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/transsion/push/utils/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/transsion/push/utils/a$a;->c:Lcom/transsion/push/utils/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/utils/a$a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/push/utils/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/push/utils/a$a;->c:Lcom/transsion/push/utils/a$d;

    iget-object p0, p0, Lcom/transsion/push/utils/a$a;->a:Ljava/util/HashMap;

    invoke-interface {p1, p0}, Lcom/transsion/push/utils/a$d;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
