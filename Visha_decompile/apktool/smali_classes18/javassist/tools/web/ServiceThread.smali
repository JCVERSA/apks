.class Ljavassist/tools/web/ServiceThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field sock:Ljava/net/Socket;

.field web:Luic;


# direct methods
.method public constructor <init>(Luic;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Ljavassist/tools/web/ServiceThread;->sock:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
