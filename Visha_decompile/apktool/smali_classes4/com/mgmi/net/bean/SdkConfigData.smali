.class public Lcom/mgmi/net/bean/SdkConfigData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field public adhub:I

.field public backup_host_timeout:I

.field public backup_schemas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public backups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c2s_preload:I

.field public c2s_preurl:Ljava/lang/String;

.field public cdn_dest:Ljava/lang/String;

.field public crash_dest:Ljava/lang/String;

.field public deeplink_wakeup_time:I

.field public gdt:I

.field public host:Ljava/lang/String;

.field public hyjy:I

.field public ins_info_desc:Ljava/lang/String;

.field public ins_switch:I

.field public ipdx_advance_time:I

.field public ipdx_err_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ipdx_url:Ljava/lang/String;

.field public is_new_feature:I

.field public is_use_ad_cache:I

.field public is_use_ipdx:I

.field public live_host:Ljava/lang/String;

.field public live_schema:Ljava/lang/String;

.field public lm_cxid:Ljava/lang/String;

.field public lm_mid_bl:I

.field public lm_pid_bl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lm_pkg_wl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public load_time:I

.field public main_host_timeout:I

.field public mma_trace_switch:I

.field public oppo:I

.field public refocus_imp:Ljava/lang/String;

.field public refresh_monitor_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public retry_interval:I

.field public retry_status:I

.field public rprain_channel:I

.field public schema:Ljava/lang/String;

.field public skip_boot_url:Ljava/lang/String;

.field public toutiao:I

.field public trace:Ljava/lang/String;

.field public warm_boot:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public warm_boot_animat:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public warm_boot_interval:I

.field public warm_boot_timeout:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public warm_boot_valid_time:J

.field public z_sdk:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
