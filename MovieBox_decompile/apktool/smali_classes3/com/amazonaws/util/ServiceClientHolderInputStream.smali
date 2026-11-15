.class public Lcom/amazonaws/util/ServiceClientHolderInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "source.java"


# instance fields
.field private a:Lcom/amazonaws/AmazonWebServiceClient;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/AmazonWebServiceClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/amazonaws/util/ServiceClientHolderInputStream;->a:Lcom/amazonaws/AmazonWebServiceClient;

    .line 5
    .line 6
    return-void
.end method
