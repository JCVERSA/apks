.class public Ldz5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldz5;->c(Ljava/lang/String;ILcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:Ljava/lang/StringBuilder;

.field public final synthetic d:Ljava/lang/StringBuilder;

.field public final synthetic e:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Ldz5$a;->b:Ljava/lang/StringBuilder;

    iput-object p2, p0, Ldz5$a;->c:Ljava/lang/StringBuilder;

    iput-object p3, p0, Ldz5$a;->d:Ljava/lang/StringBuilder;

    iput-object p4, p0, Ldz5$a;->e:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;)V
    .locals 4

    iget-object v0, p0, Ldz5$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->getFile_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldz5$a;->b:Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldz5$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldz5$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldz5$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->getFile_size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldz5$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldz5$a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->getFile_type()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ldz5$a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;

    invoke-virtual {p0, p1}, Ldz5$a;->a(Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;)V

    return-void
.end method
