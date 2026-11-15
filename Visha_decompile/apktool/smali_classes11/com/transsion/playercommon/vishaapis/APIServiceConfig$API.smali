.class public final Lcom/transsion/playercommon/vishaapis/APIServiceConfig$API;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaapis/APIServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "API"
.end annotation


# static fields
.field public static final API_GET_SNIFF_SCRIPT:Ljava/lang/String; = "/visha/sniffer/get-script"

.field public static final API_SNIFFER_GET_RESULT:Ljava/lang/String; = "/visha/sniffer/get-result"

.field public static final VISHA_SNIFFER_SUBMIT:Ljava/lang/String; = "/visha/sniffer/submit"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
