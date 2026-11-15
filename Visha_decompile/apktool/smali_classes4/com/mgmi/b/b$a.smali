.class Lcom/mgmi/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/mgmi/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgmi/b/b;

    invoke-direct {v0}, Lcom/mgmi/b/b;-><init>()V

    sput-object v0, Lcom/mgmi/b/b$a;->a:Lcom/mgmi/b/b;

    return-void
.end method
