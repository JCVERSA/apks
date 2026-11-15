.class public final synthetic Ll2b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2b;->b:Ljava/lang/String;

    iput-object p2, p0, Ll2b;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ll2b;->b:Ljava/lang/String;

    iget-object p0, p0, Ll2b;->c:Ljava/lang/Throwable;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
