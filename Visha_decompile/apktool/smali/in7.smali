.class public final synthetic Lin7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LOppOOp0/OppO0O0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;LOppOOp0/OppO0O0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin7;->b:Landroid/content/Context;

    iput-object p2, p0, Lin7;->c:LOppOOp0/OppO0O0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lin7;->b:Landroid/content/Context;

    iget-object p0, p0, Lin7;->c:LOppOOp0/OppO0O0;

    invoke-static {v0, p0}, Lon7;->d(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    return-void
.end method
