.class public Lpca$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpca;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpca;


# direct methods
.method public constructor <init>(Lpca;)V
    .locals 0

    iput-object p1, p0, Lpca$b;->a:Lpca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 0

    iget-object p0, p0, Lpca$b;->a:Lpca;

    invoke-static {p0}, Lpca;->a(Lpca;)V

    return-void
.end method
