.class public final synthetic Laq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/videomodel/SmartEditViewModel$a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/videomodel/SmartEditViewModel$a;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laq9;->b:Lcom/transsion/playercommon/videomodel/SmartEditViewModel$a;

    iput-object p2, p0, Laq9;->c:Ljava/lang/String;

    iput-object p3, p0, Laq9;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Laq9;->b:Lcom/transsion/playercommon/videomodel/SmartEditViewModel$a;

    iget-object v1, p0, Laq9;->c:Ljava/lang/String;

    iget-object p0, p0, Laq9;->d:Ljava/io/File;

    invoke-static {v0, v1, p0}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel$a;->a(Lcom/transsion/playercommon/videomodel/SmartEditViewModel$a;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
