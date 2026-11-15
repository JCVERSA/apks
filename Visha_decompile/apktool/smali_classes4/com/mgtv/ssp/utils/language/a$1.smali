.class Lcom/mgtv/ssp/utils/language/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/utils/language/a;->a(Ljava/lang/String;Ljava/io/Serializable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/Serializable;

.field final synthetic c:I

.field final synthetic d:Lcom/mgtv/ssp/utils/language/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/utils/language/a;Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/utils/language/a$1;->d:Lcom/mgtv/ssp/utils/language/a;

    iput-object p2, p0, Lcom/mgtv/ssp/utils/language/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/ssp/utils/language/a$1;->b:Ljava/io/Serializable;

    iput p4, p0, Lcom/mgtv/ssp/utils/language/a$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/a$1;->d:Lcom/mgtv/ssp/utils/language/a;

    iget-object v1, p0, Lcom/mgtv/ssp/utils/language/a$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgtv/ssp/utils/language/a$1;->b:Ljava/io/Serializable;

    iget p0, p0, Lcom/mgtv/ssp/utils/language/a$1;->c:I

    invoke-static {v0, v1, v2, p0}, Lcom/mgtv/ssp/utils/language/a;->a(Lcom/mgtv/ssp/utils/language/a;Ljava/lang/String;Ljava/io/Serializable;I)V

    return-void
.end method
