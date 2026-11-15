.class public final synthetic Lg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh0;

.field public final synthetic c:Z

.field public final synthetic d:Le74;


# direct methods
.method public synthetic constructor <init>(Lh0;ZLe74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0;->b:Lh0;

    iput-boolean p2, p0, Lg0;->c:Z

    iput-object p3, p0, Lg0;->d:Le74;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg0;->b:Lh0;

    iget-boolean v1, p0, Lg0;->c:Z

    iget-object p0, p0, Lg0;->d:Le74;

    invoke-static {v0, v1, p0}, Lh0;->a(Lh0;ZLe74;)V

    return-void
.end method
