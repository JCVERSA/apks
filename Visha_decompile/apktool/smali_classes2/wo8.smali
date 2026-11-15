.class public final synthetic Lwo8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwo8;->a:Ljava/lang/String;

    iput p2, p0, Lwo8;->b:I

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 1

    iget-object v0, p0, Lwo8;->a:Ljava/lang/String;

    iget p0, p0, Lwo8;->b:I

    invoke-static {v0, p0}, Lcom/cloud/sdk/commonutil/util/b;->a(Ljava/lang/String;I)V

    return-void
.end method
