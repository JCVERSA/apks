.class public final synthetic Lk02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Li02$b$a;

.field public final synthetic c:Ltq0;

.field public final synthetic d:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Li02$b$a;Ltq0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk02;->b:Li02$b$a;

    iput-object p2, p0, Lk02;->c:Ltq0;

    iput-object p3, p0, Lk02;->d:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk02;->b:Li02$b$a;

    iget-object v1, p0, Lk02;->c:Ltq0;

    iget-object p0, p0, Lk02;->d:Ljava/lang/Throwable;

    invoke-static {v0, v1, p0}, Li02$b$a;->a(Li02$b$a;Ltq0;Ljava/lang/Throwable;)V

    return-void
.end method
