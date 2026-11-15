.class Lcom/mgmi/trace/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/trace/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/mgmi/trace/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgmi/trace/a;

    invoke-direct {v0}, Lcom/mgmi/trace/a;-><init>()V

    sput-object v0, Lcom/mgmi/trace/a$a;->a:Lcom/mgmi/trace/a;

    return-void
.end method

.method public static synthetic a()Lcom/mgmi/trace/a;
    .locals 1

    sget-object v0, Lcom/mgmi/trace/a$a;->a:Lcom/mgmi/trace/a;

    return-object v0
.end method
