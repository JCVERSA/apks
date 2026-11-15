.class public Lcom/sun/jna/internal/Cleaner$b;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"

# interfaces
.implements Lcom/sun/jna/internal/Cleaner$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/internal/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lcom/sun/jna/internal/Cleaner;

.field public final c:Ljava/lang/Runnable;

.field public d:Lcom/sun/jna/internal/Cleaner$b;

.field public e:Lcom/sun/jna/internal/Cleaner$b;


# direct methods
.method public constructor <init>(Lcom/sun/jna/internal/Cleaner;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner$b;->b:Lcom/sun/jna/internal/Cleaner;

    iput-object p4, p0, Lcom/sun/jna/internal/Cleaner$b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()Lcom/sun/jna/internal/Cleaner$b;
    .locals 0

    iget-object p0, p0, Lcom/sun/jna/internal/Cleaner$b;->e:Lcom/sun/jna/internal/Cleaner$b;

    return-object p0
.end method

.method public b()Lcom/sun/jna/internal/Cleaner$b;
    .locals 0

    iget-object p0, p0, Lcom/sun/jna/internal/Cleaner$b;->d:Lcom/sun/jna/internal/Cleaner$b;

    return-object p0
.end method

.method public c(Lcom/sun/jna/internal/Cleaner$b;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner$b;->e:Lcom/sun/jna/internal/Cleaner$b;

    return-void
.end method

.method public clean()V
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner$b;->b:Lcom/sun/jna/internal/Cleaner;

    invoke-static {v0, p0}, Lcom/sun/jna/internal/Cleaner;->b(Lcom/sun/jna/internal/Cleaner;Lcom/sun/jna/internal/Cleaner$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/jna/internal/Cleaner$b;->c:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public d(Lcom/sun/jna/internal/Cleaner$b;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner$b;->d:Lcom/sun/jna/internal/Cleaner$b;

    return-void
.end method
