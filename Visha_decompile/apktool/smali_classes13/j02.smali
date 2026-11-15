.class public final synthetic Lj02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Li02$b$a;

.field public final synthetic c:Ltq0;

.field public final synthetic d:Lgu8;


# direct methods
.method public synthetic constructor <init>(Li02$b$a;Ltq0;Lgu8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj02;->b:Li02$b$a;

    iput-object p2, p0, Lj02;->c:Ltq0;

    iput-object p3, p0, Lj02;->d:Lgu8;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lj02;->b:Li02$b$a;

    iget-object v1, p0, Lj02;->c:Ltq0;

    iget-object p0, p0, Lj02;->d:Lgu8;

    invoke-static {v0, v1, p0}, Li02$b$a;->b(Li02$b$a;Ltq0;Lgu8;)V

    return-void
.end method
