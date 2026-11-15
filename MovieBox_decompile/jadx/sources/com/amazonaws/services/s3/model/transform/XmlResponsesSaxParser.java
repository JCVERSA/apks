package com.amazonaws.services.s3.model.transform;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.alibaba.sdk.android.oss.model.CreateBucketRequest;
import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.DeleteObjectsResponse;
import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.S3HttpUtils;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.S3VersionResult;
import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;
import com.amazonaws.services.s3.internal.ServiceUtils;
import com.amazonaws.services.s3.model.AbortIncompleteMultipartUpload;
import com.amazonaws.services.s3.model.AccessControlList;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.Bucket;
import com.amazonaws.services.s3.model.BucketAccelerateConfiguration;
import com.amazonaws.services.s3.model.BucketCrossOriginConfiguration;
import com.amazonaws.services.s3.model.BucketLifecycleConfiguration;
import com.amazonaws.services.s3.model.BucketLoggingConfiguration;
import com.amazonaws.services.s3.model.BucketReplicationConfiguration;
import com.amazonaws.services.s3.model.BucketTaggingConfiguration;
import com.amazonaws.services.s3.model.BucketVersioningConfiguration;
import com.amazonaws.services.s3.model.BucketWebsiteConfiguration;
import com.amazonaws.services.s3.model.CORSRule;
import com.amazonaws.services.s3.model.CanonicalGrantee;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.CopyObjectResult;
import com.amazonaws.services.s3.model.DeleteObjectsResult;
import com.amazonaws.services.s3.model.EmailAddressGrantee;
import com.amazonaws.services.s3.model.GetBucketInventoryConfigurationResult;
import com.amazonaws.services.s3.model.GetObjectTaggingResult;
import com.amazonaws.services.s3.model.Grantee;
import com.amazonaws.services.s3.model.GroupGrantee;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.ListBucketAnalyticsConfigurationsResult;
import com.amazonaws.services.s3.model.ListBucketInventoryConfigurationsResult;
import com.amazonaws.services.s3.model.ListBucketMetricsConfigurationsResult;
import com.amazonaws.services.s3.model.ListObjectsV2Result;
import com.amazonaws.services.s3.model.MultiObjectDeleteException;
import com.amazonaws.services.s3.model.MultipartUpload;
import com.amazonaws.services.s3.model.MultipartUploadListing;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.Owner;
import com.amazonaws.services.s3.model.PartListing;
import com.amazonaws.services.s3.model.PartSummary;
import com.amazonaws.services.s3.model.Permission;
import com.amazonaws.services.s3.model.RedirectRule;
import com.amazonaws.services.s3.model.ReplicationDestinationConfig;
import com.amazonaws.services.s3.model.ReplicationRule;
import com.amazonaws.services.s3.model.RoutingRule;
import com.amazonaws.services.s3.model.RoutingRuleCondition;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.amazonaws.services.s3.model.S3VersionSummary;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.TagSet;
import com.amazonaws.services.s3.model.VersionListing;
import com.amazonaws.services.s3.model.analytics.AnalyticsAndOperator;
import com.amazonaws.services.s3.model.analytics.AnalyticsConfiguration;
import com.amazonaws.services.s3.model.analytics.AnalyticsExportDestination;
import com.amazonaws.services.s3.model.analytics.AnalyticsFilter;
import com.amazonaws.services.s3.model.analytics.AnalyticsPrefixPredicate;
import com.amazonaws.services.s3.model.analytics.AnalyticsS3BucketDestination;
import com.amazonaws.services.s3.model.analytics.AnalyticsTagPredicate;
import com.amazonaws.services.s3.model.analytics.StorageClassAnalysis;
import com.amazonaws.services.s3.model.analytics.StorageClassAnalysisDataExport;
import com.amazonaws.services.s3.model.inventory.InventoryConfiguration;
import com.amazonaws.services.s3.model.inventory.InventoryDestination;
import com.amazonaws.services.s3.model.inventory.InventoryFilter;
import com.amazonaws.services.s3.model.inventory.InventoryPrefixPredicate;
import com.amazonaws.services.s3.model.inventory.InventoryS3BucketDestination;
import com.amazonaws.services.s3.model.inventory.InventorySchedule;
import com.amazonaws.services.s3.model.lifecycle.LifecycleAndOperator;
import com.amazonaws.services.s3.model.lifecycle.LifecycleFilter;
import com.amazonaws.services.s3.model.lifecycle.LifecyclePrefixPredicate;
import com.amazonaws.services.s3.model.lifecycle.LifecycleTagPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsAndOperator;
import com.amazonaws.services.s3.model.metrics.MetricsConfiguration;
import com.amazonaws.services.s3.model.metrics.MetricsFilter;
import com.amazonaws.services.s3.model.metrics.MetricsPrefixPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsTagPredicate;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.StringUtils;
import com.transsion.search.bean.HotRankItem;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;

public class XmlResponsesSaxParser {

    private static final Log f18234c = LogFactory.b(XmlResponsesSaxParser.class);

    private XMLReader f18235a;

    private final boolean f18236b = true;

    public static class AccessControlListHandler extends AbstractHandler {

        private final AccessControlList f18237c = new AccessControlList();

        private Grantee f18238d = null;

        private Permission f18239e = null;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("AccessControlPolicy", "Owner")) {
                if (str2.equals("ID")) {
                    this.f18237c.getOwner().setId(d());
                    return;
                } else {
                    if (str2.equals("DisplayName")) {
                        this.f18237c.getOwner().setDisplayName(d());
                        return;
                    }
                    return;
                }
            }
            if (e("AccessControlPolicy", "AccessControlList")) {
                if (str2.equals("Grant")) {
                    this.f18237c.grantPermission(this.f18238d, this.f18239e);
                    this.f18238d = null;
                    this.f18239e = null;
                    return;
                }
                return;
            }
            if (e("AccessControlPolicy", "AccessControlList", "Grant")) {
                if (str2.equals("Permission")) {
                    this.f18239e = Permission.parsePermission(d());
                }
            } else if (e("AccessControlPolicy", "AccessControlList", "Grant", "Grantee")) {
                if (str2.equals("ID")) {
                    this.f18238d.setIdentifier(d());
                    return;
                }
                if (str2.equals("EmailAddress")) {
                    this.f18238d.setIdentifier(d());
                } else if (str2.equals("URI")) {
                    this.f18238d = GroupGrantee.parseGroupGrantee(d());
                } else if (str2.equals("DisplayName")) {
                    ((CanonicalGrantee) this.f18238d).setDisplayName(d());
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("AccessControlPolicy")) {
                if (str2.equals("Owner")) {
                    this.f18237c.setOwner(new Owner());
                }
            } else if (e("AccessControlPolicy", "AccessControlList", "Grant") && str2.equals("Grantee")) {
                String strI = XmlResponsesSaxParser.i("xsi:type", attributes);
                if ("AmazonCustomerByEmail".equals(strI)) {
                    this.f18238d = new EmailAddressGrantee(null);
                } else if ("CanonicalUser".equals(strI)) {
                    this.f18238d = new CanonicalGrantee(null);
                } else {
                    HotRankItem.CATE_GROUP.equals(strI);
                }
            }
        }
    }

    public static class BucketCrossOriginConfigurationHandler extends AbstractHandler {

        private CORSRule f18242d;

        private final BucketCrossOriginConfiguration f18241c = new BucketCrossOriginConfiguration(new ArrayList());

        private List f18243e = null;

        private List f18244f = null;

        private List f18245g = null;

        private List f18246h = null;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("CORSConfiguration")) {
                if (str2.equals("CORSRule")) {
                    this.f18242d.a(this.f18246h);
                    this.f18242d.b(this.f18243e);
                    this.f18242d.c(this.f18244f);
                    this.f18242d.d(this.f18245g);
                    this.f18246h = null;
                    this.f18243e = null;
                    this.f18244f = null;
                    this.f18245g = null;
                    this.f18241c.getRules().add(this.f18242d);
                    this.f18242d = null;
                    return;
                }
                return;
            }
            if (e("CORSConfiguration", "CORSRule")) {
                if (str2.equals("ID")) {
                    this.f18242d.e(d());
                    return;
                }
                if (str2.equals("AllowedOrigin")) {
                    this.f18244f.add(d());
                    return;
                }
                if (str2.equals("AllowedMethod")) {
                    this.f18243e.add(CORSRule.AllowedMethods.fromValue(d()));
                    return;
                }
                if (str2.equals("MaxAgeSeconds")) {
                    this.f18242d.f(Integer.parseInt(d()));
                } else if (str2.equals("ExposeHeader")) {
                    this.f18245g.add(d());
                } else if (str2.equals("AllowedHeader")) {
                    this.f18246h.add(d());
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("CORSConfiguration")) {
                if (str2.equals("CORSRule")) {
                    this.f18242d = new CORSRule();
                    return;
                }
                return;
            }
            if (e("CORSConfiguration", "CORSRule")) {
                if (str2.equals("AllowedOrigin")) {
                    if (this.f18244f == null) {
                        this.f18244f = new ArrayList();
                    }
                } else if (str2.equals("AllowedMethod")) {
                    if (this.f18243e == null) {
                        this.f18243e = new ArrayList();
                    }
                } else if (str2.equals("ExposeHeader")) {
                    if (this.f18245g == null) {
                        this.f18245g = new ArrayList();
                    }
                } else if (str2.equals("AllowedHeader") && this.f18246h == null) {
                    this.f18246h = new LinkedList();
                }
            }
        }
    }

    public static class BucketLifecycleConfigurationHandler extends AbstractHandler {

        private final BucketLifecycleConfiguration f18247c = new BucketLifecycleConfiguration(new ArrayList());

        private BucketLifecycleConfiguration.Rule f18248d;

        private BucketLifecycleConfiguration.Transition f18249e;

        private BucketLifecycleConfiguration.NoncurrentVersionTransition f18250f;

        private AbortIncompleteMultipartUpload f18251g;

        private LifecycleFilter f18252h;

        private List f18253i;

        private String f18254j;

        private String f18255k;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("LifecycleConfiguration")) {
                if (str2.equals("Rule")) {
                    this.f18247c.getRules().add(this.f18248d);
                    this.f18248d = null;
                    return;
                }
                return;
            }
            if (e("LifecycleConfiguration", "Rule")) {
                if (str2.equals("ID")) {
                    this.f18248d.setId(d());
                    return;
                }
                if (str2.equals("Prefix")) {
                    this.f18248d.setPrefix(d());
                    return;
                }
                if (str2.equals("Status")) {
                    this.f18248d.setStatus(d());
                    return;
                }
                if (str2.equals("Transition")) {
                    this.f18248d.addTransition(this.f18249e);
                    this.f18249e = null;
                    return;
                }
                if (str2.equals("NoncurrentVersionTransition")) {
                    this.f18248d.addNoncurrentVersionTransition(this.f18250f);
                    this.f18250f = null;
                    return;
                } else if (str2.equals("AbortIncompleteMultipartUpload")) {
                    this.f18248d.setAbortIncompleteMultipartUpload(this.f18251g);
                    this.f18251g = null;
                    return;
                } else {
                    if (str2.equals("Filter")) {
                        this.f18248d.setFilter(this.f18252h);
                        this.f18252h = null;
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "Expiration")) {
                if (str2.equals(HttpHeaders.DATE)) {
                    this.f18248d.setExpirationDate(ServiceUtils.d(d()));
                    return;
                }
                if (str2.equals("Days")) {
                    this.f18248d.setExpirationInDays(Integer.parseInt(d()));
                    return;
                } else {
                    if (str2.equals("ExpiredObjectDeleteMarker") && "true".equals(d())) {
                        this.f18248d.setExpiredObjectDeleteMarker(true);
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "Transition")) {
                if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                    this.f18249e.setStorageClass(d());
                    return;
                } else if (str2.equals(HttpHeaders.DATE)) {
                    this.f18249e.setDate(ServiceUtils.d(d()));
                    return;
                } else {
                    if (str2.equals("Days")) {
                        this.f18249e.setDays(Integer.parseInt(d()));
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "NoncurrentVersionExpiration")) {
                if (str2.equals("NoncurrentDays")) {
                    this.f18248d.setNoncurrentVersionExpirationInDays(Integer.parseInt(d()));
                    return;
                }
                return;
            }
            if (e("LifecycleConfiguration", "Rule", "NoncurrentVersionTransition")) {
                if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                    this.f18250f.setStorageClass(d());
                    return;
                } else {
                    if (str2.equals("NoncurrentDays")) {
                        this.f18250f.setDays(Integer.parseInt(d()));
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "AbortIncompleteMultipartUpload")) {
                if (str2.equals("DaysAfterInitiation")) {
                    this.f18251g.setDaysAfterInitiation(Integer.parseInt(d()));
                    return;
                }
                return;
            }
            if (e("LifecycleConfiguration", "Rule", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18252h.setPredicate(new LifecyclePrefixPredicate(d()));
                    return;
                }
                if (str2.equals("Tag")) {
                    this.f18252h.setPredicate(new LifecycleTagPredicate(new Tag(this.f18254j, this.f18255k)));
                    this.f18254j = null;
                    this.f18255k = null;
                    return;
                } else {
                    if (str2.equals("And")) {
                        this.f18252h.setPredicate(new LifecycleAndOperator(this.f18253i));
                        this.f18253i = null;
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18254j = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18255k = d();
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f18253i.add(new LifecyclePrefixPredicate(d()));
                    return;
                } else {
                    if (str2.equals("Tag")) {
                        this.f18253i.add(new LifecycleTagPredicate(new Tag(this.f18254j, this.f18255k)));
                        this.f18254j = null;
                        this.f18255k = null;
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18254j = d();
                } else if (str2.equals("Value")) {
                    this.f18255k = d();
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("LifecycleConfiguration")) {
                if (str2.equals("Rule")) {
                    this.f18248d = new BucketLifecycleConfiguration.Rule();
                    return;
                }
                return;
            }
            if (!e("LifecycleConfiguration", "Rule")) {
                if (e("LifecycleConfiguration", "Rule", "Filter") && str2.equals("And")) {
                    this.f18253i = new ArrayList();
                    return;
                }
                return;
            }
            if (str2.equals("Transition")) {
                this.f18249e = new BucketLifecycleConfiguration.Transition();
                return;
            }
            if (str2.equals("NoncurrentVersionTransition")) {
                this.f18250f = new BucketLifecycleConfiguration.NoncurrentVersionTransition();
            } else if (str2.equals("AbortIncompleteMultipartUpload")) {
                this.f18251g = new AbortIncompleteMultipartUpload();
            } else if (str2.equals("Filter")) {
                this.f18252h = new LifecycleFilter();
            }
        }
    }

    public static class BucketReplicationConfigurationHandler extends AbstractHandler {

        private final BucketReplicationConfiguration f18258c = new BucketReplicationConfiguration();

        private String f18259d;

        private ReplicationRule f18260e;

        private ReplicationDestinationConfig f18261f;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("ReplicationConfiguration")) {
                if (!str2.equals("Rule")) {
                    if (str2.equals("Role")) {
                        this.f18258c.setRoleARN(d());
                        return;
                    }
                    return;
                } else {
                    this.f18258c.addRule(this.f18259d, this.f18260e);
                    this.f18260e = null;
                    this.f18259d = null;
                    this.f18261f = null;
                    return;
                }
            }
            if (!e("ReplicationConfiguration", "Rule")) {
                if (e("ReplicationConfiguration", "Rule", "Destination")) {
                    if (str2.equals("Bucket")) {
                        this.f18261f.a(d());
                        return;
                    } else {
                        if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                            this.f18261f.b(d());
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (str2.equals("ID")) {
                this.f18259d = d();
                return;
            }
            if (str2.equals("Prefix")) {
                this.f18260e.b(d());
            } else if (str2.equals("Status")) {
                this.f18260e.c(d());
            } else if (str2.equals("Destination")) {
                this.f18260e.a(this.f18261f);
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ReplicationConfiguration")) {
                if (str2.equals("Rule")) {
                    this.f18260e = new ReplicationRule();
                }
            } else if (e("ReplicationConfiguration", "Rule") && str2.equals("Destination")) {
                this.f18261f = new ReplicationDestinationConfig();
            }
        }
    }

    public static class BucketTaggingConfigurationHandler extends AbstractHandler {

        private final BucketTaggingConfiguration f18262c = new BucketTaggingConfiguration();

        private Map f18263d;

        private String f18264e;

        private String f18265f;

        @Override
        protected void b(String str, String str2, String str3) {
            String str4;
            if (e("Tagging")) {
                if (str2.equals("TagSet")) {
                    this.f18262c.getAllTagSets().add(new TagSet(this.f18263d));
                    this.f18263d = null;
                    return;
                }
                return;
            }
            if (e("Tagging", "TagSet")) {
                if (str2.equals("Tag")) {
                    String str5 = this.f18264e;
                    if (str5 != null && (str4 = this.f18265f) != null) {
                        this.f18263d.put(str5, str4);
                    }
                    this.f18264e = null;
                    this.f18265f = null;
                    return;
                }
                return;
            }
            if (e("Tagging", "TagSet", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18264e = d();
                } else if (str2.equals("Value")) {
                    this.f18265f = d();
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("Tagging") && str2.equals("TagSet")) {
                this.f18263d = new HashMap();
            }
        }
    }

    public static class BucketWebsiteConfigurationHandler extends AbstractHandler {

        private final BucketWebsiteConfiguration f18267c = new BucketWebsiteConfiguration(null);

        private RoutingRuleCondition f18268d = null;

        private RedirectRule f18269e = null;

        private RoutingRule f18270f = null;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("WebsiteConfiguration")) {
                if (str2.equals("RedirectAllRequestsTo")) {
                    this.f18267c.setRedirectAllRequestsTo(this.f18269e);
                    this.f18269e = null;
                    return;
                }
                return;
            }
            if (e("WebsiteConfiguration", "IndexDocument")) {
                if (str2.equals("Suffix")) {
                    this.f18267c.setIndexDocumentSuffix(d());
                    return;
                }
                return;
            }
            if (e("WebsiteConfiguration", "ErrorDocument")) {
                if (str2.equals("Key")) {
                    this.f18267c.setErrorDocument(d());
                    return;
                }
                return;
            }
            if (e("WebsiteConfiguration", "RoutingRules")) {
                if (str2.equals("RoutingRule")) {
                    this.f18267c.getRoutingRules().add(this.f18270f);
                    this.f18270f = null;
                    return;
                }
                return;
            }
            if (e("WebsiteConfiguration", "RoutingRules", "RoutingRule")) {
                if (str2.equals("Condition")) {
                    this.f18270f.a(this.f18268d);
                    this.f18268d = null;
                    return;
                } else {
                    if (str2.equals("Redirect")) {
                        this.f18270f.b(this.f18269e);
                        this.f18269e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("WebsiteConfiguration", "RoutingRules", "RoutingRule", "Condition")) {
                if (str2.equals("KeyPrefixEquals")) {
                    this.f18268d.b(d());
                    return;
                } else {
                    if (str2.equals("HttpErrorCodeReturnedEquals")) {
                        this.f18268d.a(d());
                        return;
                    }
                    return;
                }
            }
            if (e("WebsiteConfiguration", "RedirectAllRequestsTo") || e("WebsiteConfiguration", "RoutingRules", "RoutingRule", "Redirect")) {
                if (str2.equals("Protocol")) {
                    this.f18269e.c(d());
                    return;
                }
                if (str2.equals("HostName")) {
                    this.f18269e.a(d());
                    return;
                }
                if (str2.equals("ReplaceKeyPrefixWith")) {
                    this.f18269e.d(d());
                } else if (str2.equals("ReplaceKeyWith")) {
                    this.f18269e.e(d());
                } else if (str2.equals("HttpRedirectCode")) {
                    this.f18269e.b(d());
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("WebsiteConfiguration")) {
                if (str2.equals("RedirectAllRequestsTo")) {
                    this.f18269e = new RedirectRule();
                }
            } else if (e("WebsiteConfiguration", "RoutingRules")) {
                if (str2.equals("RoutingRule")) {
                    this.f18270f = new RoutingRule();
                }
            } else if (e("WebsiteConfiguration", "RoutingRules", "RoutingRule")) {
                if (str2.equals("Condition")) {
                    this.f18268d = new RoutingRuleCondition();
                } else if (str2.equals("Redirect")) {
                    this.f18269e = new RedirectRule();
                }
            }
        }
    }

    public static class CompleteMultipartUploadHandler extends AbstractSSEHandler implements ObjectExpirationResult, S3VersionResult, S3RequesterChargedResult {

        private CompleteMultipartUploadResult f18271c;

        private AmazonS3Exception f18272d;

        private String f18273e;

        private String f18274f;

        private String f18275g;

        @Override
        protected void b(String str, String str2, String str3) {
            AmazonS3Exception amazonS3Exception;
            if (a()) {
                if (!str2.equals("Error") || (amazonS3Exception = this.f18272d) == null) {
                    return;
                }
                amazonS3Exception.setErrorCode(this.f18275g);
                this.f18272d.setRequestId(this.f18274f);
                this.f18272d.setExtendedRequestId(this.f18273e);
                return;
            }
            if (e("CompleteMultipartUploadResult")) {
                if (str2.equals(HttpHeaders.LOCATION)) {
                    this.f18271c.setLocation(d());
                    return;
                }
                if (str2.equals("Bucket")) {
                    this.f18271c.setBucketName(d());
                    return;
                } else if (str2.equals("Key")) {
                    this.f18271c.setKey(d());
                    return;
                } else {
                    if (str2.equals("ETag")) {
                        this.f18271c.setETag(ServiceUtils.f(d()));
                        return;
                    }
                    return;
                }
            }
            if (e("Error")) {
                if (str2.equals("Code")) {
                    this.f18275g = d();
                    return;
                }
                if (str2.equals("Message")) {
                    this.f18272d = new AmazonS3Exception(d());
                } else if (str2.equals("RequestId")) {
                    this.f18274f = d();
                } else if (str2.equals("HostId")) {
                    this.f18273e = d();
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (a() && str2.equals("CompleteMultipartUploadResult")) {
                this.f18271c = new CompleteMultipartUploadResult();
            }
        }

        @Override
        protected ServerSideEncryptionResult f() {
            return this.f18271c;
        }

        public AmazonS3Exception g() {
            return this.f18272d;
        }

        public CompleteMultipartUploadResult h() {
            return this.f18271c;
        }

        @Override
        public void setExpirationTime(Date date) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f18271c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setExpirationTime(date);
            }
        }

        @Override
        public void setExpirationTimeRuleId(String str) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f18271c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setExpirationTimeRuleId(str);
            }
        }

        @Override
        public void setRequesterCharged(boolean z10) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f18271c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setRequesterCharged(z10);
            }
        }

        @Override
        public void setVersionId(String str) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f18271c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setVersionId(str);
            }
        }
    }

    public static class CopyObjectResultHandler extends AbstractSSEHandler implements ObjectExpirationResult, S3RequesterChargedResult, S3VersionResult {

        private final CopyObjectResult f18276c = new CopyObjectResult();

        private String f18277d = null;

        private String f18278e = null;

        private String f18279f = null;

        private String f18280g = null;

        private boolean f18281h = false;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("CopyObjectResult") || e("CopyPartResult")) {
                if (str2.equals("LastModified")) {
                    this.f18276c.setLastModifiedDate(ServiceUtils.d(d()));
                    return;
                } else {
                    if (str2.equals("ETag")) {
                        this.f18276c.setETag(ServiceUtils.f(d()));
                        return;
                    }
                    return;
                }
            }
            if (e("Error")) {
                if (str2.equals("Code")) {
                    this.f18277d = d();
                    return;
                }
                if (str2.equals("Message")) {
                    this.f18278e = d();
                } else if (str2.equals("RequestId")) {
                    this.f18279f = d();
                } else if (str2.equals("HostId")) {
                    this.f18280g = d();
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (a()) {
                if (str2.equals("CopyObjectResult") || str2.equals("CopyPartResult")) {
                    this.f18281h = false;
                } else if (str2.equals("Error")) {
                    this.f18281h = true;
                }
            }
        }

        @Override
        protected ServerSideEncryptionResult f() {
            return this.f18276c;
        }

        @Override
        public void setExpirationTime(Date date) {
            this.f18276c.setExpirationTime(date);
        }

        @Override
        public void setExpirationTimeRuleId(String str) {
            this.f18276c.setExpirationTimeRuleId(str);
        }

        @Override
        public void setRequesterCharged(boolean z10) {
            this.f18276c.setRequesterCharged(z10);
        }

        @Override
        public void setVersionId(String str) {
            this.f18276c.setVersionId(str);
        }
    }

    public static class DeleteObjectsHandler extends AbstractHandler {

        private final DeleteObjectsResponse f18282c = new DeleteObjectsResponse();

        private DeleteObjectsResult.DeletedObject f18283d = null;

        private MultiObjectDeleteException.DeleteError f18284e = null;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("DeleteResult")) {
                if (str2.equals("Deleted")) {
                    this.f18282c.a().add(this.f18283d);
                    this.f18283d = null;
                    return;
                } else {
                    if (str2.equals("Error")) {
                        this.f18282c.b().add(this.f18284e);
                        this.f18284e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("DeleteResult", "Deleted")) {
                if (str2.equals("Key")) {
                    this.f18283d.setKey(d());
                    return;
                }
                if (str2.equals("VersionId")) {
                    this.f18283d.setVersionId(d());
                    return;
                } else if (str2.equals("DeleteMarker")) {
                    this.f18283d.setDeleteMarker(d().equals("true"));
                    return;
                } else {
                    if (str2.equals("DeleteMarkerVersionId")) {
                        this.f18283d.setDeleteMarkerVersionId(d());
                        return;
                    }
                    return;
                }
            }
            if (e("DeleteResult", "Error")) {
                if (str2.equals("Key")) {
                    this.f18284e.b(d());
                    return;
                }
                if (str2.equals("VersionId")) {
                    this.f18284e.d(d());
                } else if (str2.equals("Code")) {
                    this.f18284e.a(d());
                } else if (str2.equals("Message")) {
                    this.f18284e.c(d());
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("DeleteResult")) {
                if (str2.equals("Deleted")) {
                    this.f18283d = new DeleteObjectsResult.DeletedObject();
                } else if (str2.equals("Error")) {
                    this.f18284e = new MultiObjectDeleteException.DeleteError();
                }
            }
        }
    }

    public static class GetBucketAnalyticsConfigurationHandler extends AbstractHandler {

        private final AnalyticsConfiguration f18285c = new AnalyticsConfiguration();

        private AnalyticsFilter f18286d;

        private List f18287e;

        private StorageClassAnalysis f18288f;

        private StorageClassAnalysisDataExport f18289g;

        private AnalyticsExportDestination f18290h;

        private AnalyticsS3BucketDestination f18291i;

        private String f18292j;

        private String f18293k;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("AnalyticsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18285c.setId(d());
                    return;
                } else if (str2.equals("Filter")) {
                    this.f18285c.setFilter(this.f18286d);
                    return;
                } else {
                    if (str2.equals("StorageClassAnalysis")) {
                        this.f18285c.setStorageClassAnalysis(this.f18288f);
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18286d.setPredicate(new AnalyticsPrefixPredicate(d()));
                    return;
                }
                if (str2.equals("Tag")) {
                    this.f18286d.setPredicate(new AnalyticsTagPredicate(new Tag(this.f18292j, this.f18293k)));
                    this.f18292j = null;
                    this.f18293k = null;
                    return;
                } else {
                    if (str2.equals("And")) {
                        this.f18286d.setPredicate(new AnalyticsAndOperator(this.f18287e));
                        this.f18287e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18292j = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18293k = d();
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f18287e.add(new AnalyticsPrefixPredicate(d()));
                    return;
                } else {
                    if (str2.equals("Tag")) {
                        this.f18287e.add(new AnalyticsTagPredicate(new Tag(this.f18292j, this.f18293k)));
                        this.f18292j = null;
                        this.f18293k = null;
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18292j = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18293k = d();
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f18288f.setDataExport(this.f18289g);
                    return;
                }
                return;
            }
            if (e("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("OutputSchemaVersion")) {
                    this.f18289g.setOutputSchemaVersion(d());
                    return;
                } else {
                    if (str2.equals("Destination")) {
                        this.f18289g.setDestination(this.f18290h);
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f18290h.setS3BucketDestination(this.f18291i);
                }
            } else if (e("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination", "S3BucketDestination")) {
                if (str2.equals("Format")) {
                    this.f18291i.setFormat(d());
                    return;
                }
                if (str2.equals("BucketAccountId")) {
                    this.f18291i.setBucketAccountId(d());
                } else if (str2.equals("Bucket")) {
                    this.f18291i.setBucketArn(d());
                } else if (str2.equals("Prefix")) {
                    this.f18291i.setPrefix(d());
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("AnalyticsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f18286d = new AnalyticsFilter();
                    return;
                } else {
                    if (str2.equals("StorageClassAnalysis")) {
                        this.f18288f = new StorageClassAnalysis();
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "Filter")) {
                if (str2.equals("And")) {
                    this.f18287e = new ArrayList();
                }
            } else if (e("AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f18289g = new StorageClassAnalysisDataExport();
                }
            } else if (e("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("Destination")) {
                    this.f18290h = new AnalyticsExportDestination();
                }
            } else if (e("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination") && str2.equals("S3BucketDestination")) {
                this.f18291i = new AnalyticsS3BucketDestination();
            }
        }
    }

    public static class GetBucketInventoryConfigurationHandler extends AbstractHandler {

        private final GetBucketInventoryConfigurationResult f18294c = new GetBucketInventoryConfigurationResult();

        private final InventoryConfiguration f18295d = new InventoryConfiguration();

        private List f18296e;

        private InventoryDestination f18297f;

        private InventoryFilter f18298g;

        private InventoryS3BucketDestination f18299h;

        private InventorySchedule f18300i;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("InventoryConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18295d.setId(d());
                    return;
                }
                if (str2.equals("Destination")) {
                    this.f18295d.setDestination(this.f18297f);
                    this.f18297f = null;
                    return;
                }
                if (str2.equals("IsEnabled")) {
                    this.f18295d.setEnabled(Boolean.valueOf("true".equals(d())));
                    return;
                }
                if (str2.equals("Filter")) {
                    this.f18295d.setInventoryFilter(this.f18298g);
                    this.f18298g = null;
                    return;
                }
                if (str2.equals("IncludedObjectVersions")) {
                    this.f18295d.setIncludedObjectVersions(d());
                    return;
                }
                if (str2.equals("Schedule")) {
                    this.f18295d.setSchedule(this.f18300i);
                    this.f18300i = null;
                    return;
                } else {
                    if (str2.equals("OptionalFields")) {
                        this.f18295d.setOptionalFields(this.f18296e);
                        this.f18296e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("InventoryConfiguration", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f18297f.setS3BucketDestination(this.f18299h);
                    this.f18299h = null;
                    return;
                }
                return;
            }
            if (e("InventoryConfiguration", "Destination", "S3BucketDestination")) {
                if (str2.equals("AccountId")) {
                    this.f18299h.setAccountId(d());
                    return;
                }
                if (str2.equals("Bucket")) {
                    this.f18299h.setBucketArn(d());
                    return;
                } else if (str2.equals("Format")) {
                    this.f18299h.setFormat(d());
                    return;
                } else {
                    if (str2.equals("Prefix")) {
                        this.f18299h.setPrefix(d());
                        return;
                    }
                    return;
                }
            }
            if (e("InventoryConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18298g.setPredicate(new InventoryPrefixPredicate(d()));
                }
            } else if (e("InventoryConfiguration", "Schedule")) {
                if (str2.equals("Frequency")) {
                    this.f18300i.setFrequency(d());
                }
            } else if (e("InventoryConfiguration", "OptionalFields") && str2.equals("Field")) {
                this.f18296e.add(d());
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (!e("InventoryConfiguration")) {
                if (e("InventoryConfiguration", "Destination") && str2.equals("S3BucketDestination")) {
                    this.f18299h = new InventoryS3BucketDestination();
                    return;
                }
                return;
            }
            if (str2.equals("Destination")) {
                this.f18297f = new InventoryDestination();
                return;
            }
            if (str2.equals("Filter")) {
                this.f18298g = new InventoryFilter();
            } else if (str2.equals("Schedule")) {
                this.f18300i = new InventorySchedule();
            } else if (str2.equals("OptionalFields")) {
                this.f18296e = new ArrayList();
            }
        }
    }

    public static class GetBucketMetricsConfigurationHandler extends AbstractHandler {

        private final MetricsConfiguration f18301c = new MetricsConfiguration();

        private MetricsFilter f18302d;

        private List f18303e;

        private String f18304f;

        private String f18305g;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("MetricsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18301c.setId(d());
                    return;
                } else {
                    if (str2.equals("Filter")) {
                        this.f18301c.setFilter(this.f18302d);
                        this.f18302d = null;
                        return;
                    }
                    return;
                }
            }
            if (e("MetricsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18302d.setPredicate(new MetricsPrefixPredicate(d()));
                    return;
                }
                if (str2.equals("Tag")) {
                    this.f18302d.setPredicate(new MetricsTagPredicate(new Tag(this.f18304f, this.f18305g)));
                    this.f18304f = null;
                    this.f18305g = null;
                    return;
                } else {
                    if (str2.equals("And")) {
                        this.f18302d.setPredicate(new MetricsAndOperator(this.f18303e));
                        this.f18303e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("MetricsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18304f = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18305g = d();
                        return;
                    }
                    return;
                }
            }
            if (e("MetricsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f18303e.add(new MetricsPrefixPredicate(d()));
                    return;
                } else {
                    if (str2.equals("Tag")) {
                        this.f18303e.add(new MetricsTagPredicate(new Tag(this.f18304f, this.f18305g)));
                        this.f18304f = null;
                        this.f18305g = null;
                        return;
                    }
                    return;
                }
            }
            if (e("MetricsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18304f = d();
                } else if (str2.equals("Value")) {
                    this.f18305g = d();
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("MetricsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f18302d = new MetricsFilter();
                }
            } else if (e("MetricsConfiguration", "Filter") && str2.equals("And")) {
                this.f18303e = new ArrayList();
            }
        }
    }

    public static class GetObjectTaggingHandler extends AbstractHandler {

        private GetObjectTaggingResult f18306c;

        private List f18307d;

        private String f18308e;

        private String f18309f;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("Tagging") && str2.equals("TagSet")) {
                this.f18306c = new GetObjectTaggingResult(this.f18307d);
                this.f18307d = null;
            }
            if (e("Tagging", "TagSet")) {
                if (str2.equals("Tag")) {
                    this.f18307d.add(new Tag(this.f18309f, this.f18308e));
                    this.f18309f = null;
                    this.f18308e = null;
                    return;
                }
                return;
            }
            if (e("Tagging", "TagSet", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18309f = d();
                } else if (str2.equals("Value")) {
                    this.f18308e = d();
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("Tagging") && str2.equals("TagSet")) {
                this.f18307d = new ArrayList();
            }
        }
    }

    public static class ListAllMyBucketsHandler extends AbstractHandler {

        private final List f18311c = new ArrayList();

        private Owner f18312d = null;

        private Bucket f18313e = null;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("ListAllMyBucketsResult", "Owner")) {
                if (str2.equals("ID")) {
                    this.f18312d.setId(d());
                    return;
                } else {
                    if (str2.equals("DisplayName")) {
                        this.f18312d.setDisplayName(d());
                        return;
                    }
                    return;
                }
            }
            if (e("ListAllMyBucketsResult", "Buckets")) {
                if (str2.equals("Bucket")) {
                    this.f18311c.add(this.f18313e);
                    this.f18313e = null;
                    return;
                }
                return;
            }
            if (e("ListAllMyBucketsResult", "Buckets", "Bucket")) {
                if (str2.equals("Name")) {
                    this.f18313e.setName(d());
                } else if (str2.equals("CreationDate")) {
                    this.f18313e.setCreationDate(DateUtils.h(d()));
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListAllMyBucketsResult")) {
                if (str2.equals("Owner")) {
                    this.f18312d = new Owner();
                }
            } else if (e("ListAllMyBucketsResult", "Buckets") && str2.equals("Bucket")) {
                Bucket bucket = new Bucket();
                this.f18313e = bucket;
                bucket.setOwner(this.f18312d);
            }
        }
    }

    public static class ListBucketAnalyticsConfigurationHandler extends AbstractHandler {

        private final ListBucketAnalyticsConfigurationsResult f18314c = new ListBucketAnalyticsConfigurationsResult();

        private AnalyticsConfiguration f18315d;

        private AnalyticsFilter f18316e;

        private List f18317f;

        private StorageClassAnalysis f18318g;

        private StorageClassAnalysisDataExport f18319h;

        private AnalyticsExportDestination f18320i;

        private AnalyticsS3BucketDestination f18321j;

        private String f18322k;

        private String f18323l;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("ListBucketAnalyticsConfigurationsResult")) {
                if (str2.equals("AnalyticsConfiguration")) {
                    if (this.f18314c.getAnalyticsConfigurationList() == null) {
                        this.f18314c.setAnalyticsConfigurationList(new ArrayList());
                    }
                    this.f18314c.getAnalyticsConfigurationList().add(this.f18315d);
                    this.f18315d = null;
                    return;
                }
                if (str2.equals("IsTruncated")) {
                    this.f18314c.setTruncated("true".equals(d()));
                    return;
                } else if (str2.equals("ContinuationToken")) {
                    this.f18314c.setContinuationToken(d());
                    return;
                } else {
                    if (str2.equals("NextContinuationToken")) {
                        this.f18314c.setNextContinuationToken(d());
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18315d.setId(d());
                    return;
                } else if (str2.equals("Filter")) {
                    this.f18315d.setFilter(this.f18316e);
                    return;
                } else {
                    if (str2.equals("StorageClassAnalysis")) {
                        this.f18315d.setStorageClassAnalysis(this.f18318g);
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18316e.setPredicate(new AnalyticsPrefixPredicate(d()));
                    return;
                }
                if (str2.equals("Tag")) {
                    this.f18316e.setPredicate(new AnalyticsTagPredicate(new Tag(this.f18322k, this.f18323l)));
                    this.f18322k = null;
                    this.f18323l = null;
                    return;
                } else {
                    if (str2.equals("And")) {
                        this.f18316e.setPredicate(new AnalyticsAndOperator(this.f18317f));
                        this.f18317f = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18322k = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18323l = d();
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f18317f.add(new AnalyticsPrefixPredicate(d()));
                    return;
                } else {
                    if (str2.equals("Tag")) {
                        this.f18317f.add(new AnalyticsTagPredicate(new Tag(this.f18322k, this.f18323l)));
                        this.f18322k = null;
                        this.f18323l = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18322k = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18323l = d();
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f18318g.setDataExport(this.f18319h);
                    return;
                }
                return;
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("OutputSchemaVersion")) {
                    this.f18319h.setOutputSchemaVersion(d());
                    return;
                } else {
                    if (str2.equals("Destination")) {
                        this.f18319h.setDestination(this.f18320i);
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f18320i.setS3BucketDestination(this.f18321j);
                }
            } else if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination", "S3BucketDestination")) {
                if (str2.equals("Format")) {
                    this.f18321j.setFormat(d());
                    return;
                }
                if (str2.equals("BucketAccountId")) {
                    this.f18321j.setBucketAccountId(d());
                } else if (str2.equals("Bucket")) {
                    this.f18321j.setBucketArn(d());
                } else if (str2.equals("Prefix")) {
                    this.f18321j.setPrefix(d());
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListBucketAnalyticsConfigurationsResult")) {
                if (str2.equals("AnalyticsConfiguration")) {
                    this.f18315d = new AnalyticsConfiguration();
                    return;
                }
                return;
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f18316e = new AnalyticsFilter();
                    return;
                } else {
                    if (str2.equals("StorageClassAnalysis")) {
                        this.f18318g = new StorageClassAnalysis();
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter")) {
                if (str2.equals("And")) {
                    this.f18317f = new ArrayList();
                }
            } else if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f18319h = new StorageClassAnalysisDataExport();
                }
            } else if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("Destination")) {
                    this.f18320i = new AnalyticsExportDestination();
                }
            } else if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination") && str2.equals("S3BucketDestination")) {
                this.f18321j = new AnalyticsS3BucketDestination();
            }
        }
    }

    public static class ListBucketHandler extends AbstractHandler {

        private final ObjectListing f18324c;

        private final boolean f18325d;

        private S3ObjectSummary f18326e;

        private Owner f18327f;

        private String f18328g;

        @Override
        protected void b(String str, String str2, String str3) {
            String strA = null;
            if (a()) {
                if (str2.equals("ListBucketResult") && this.f18324c.isTruncated() && this.f18324c.getNextMarker() == null) {
                    if (!this.f18324c.getObjectSummaries().isEmpty()) {
                        strA = this.f18324c.getObjectSummaries().get(this.f18324c.getObjectSummaries().size() - 1).a();
                    } else if (this.f18324c.getCommonPrefixes().isEmpty()) {
                        XmlResponsesSaxParser.f18234c.f("S3 response indicates truncated results, but contains no object summaries or common prefixes.");
                    } else {
                        strA = this.f18324c.getCommonPrefixes().get(this.f18324c.getCommonPrefixes().size() - 1);
                    }
                    this.f18324c.setNextMarker(strA);
                    return;
                }
                return;
            }
            if (!e("ListBucketResult")) {
                if (!e("ListBucketResult", "Contents")) {
                    if (!e("ListBucketResult", "Contents", "Owner")) {
                        if (e("ListBucketResult", "CommonPrefixes") && str2.equals("Prefix")) {
                            this.f18324c.getCommonPrefixes().add(XmlResponsesSaxParser.h(d(), this.f18325d));
                            return;
                        }
                        return;
                    }
                    if (str2.equals("ID")) {
                        this.f18327f.setId(d());
                        return;
                    } else {
                        if (str2.equals("DisplayName")) {
                            this.f18327f.setDisplayName(d());
                            return;
                        }
                        return;
                    }
                }
                if (str2.equals("Key")) {
                    String strD = d();
                    this.f18328g = strD;
                    this.f18326e.d(XmlResponsesSaxParser.h(strD, this.f18325d));
                    return;
                }
                if (str2.equals("LastModified")) {
                    this.f18326e.e(ServiceUtils.d(d()));
                    return;
                }
                if (str2.equals("ETag")) {
                    this.f18326e.c(ServiceUtils.f(d()));
                    return;
                }
                if (str2.equals("Size")) {
                    this.f18326e.g(XmlResponsesSaxParser.m(d()));
                    return;
                }
                if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                    this.f18326e.h(d());
                    return;
                } else {
                    if (str2.equals("Owner")) {
                        this.f18326e.f(this.f18327f);
                        this.f18327f = null;
                        return;
                    }
                    return;
                }
            }
            if (str2.equals("Name")) {
                this.f18324c.setBucketName(d());
                if (XmlResponsesSaxParser.f18234c.b()) {
                    XmlResponsesSaxParser.f18234c.a("Examining listing for bucket: " + this.f18324c.getBucketName());
                    return;
                }
                return;
            }
            if (str2.equals("Prefix")) {
                this.f18324c.setPrefix(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18325d));
                return;
            }
            if (str2.equals("Marker")) {
                this.f18324c.setMarker(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18325d));
                return;
            }
            if (str2.equals("NextMarker")) {
                this.f18324c.setNextMarker(XmlResponsesSaxParser.h(d(), this.f18325d));
                return;
            }
            if (str2.equals("MaxKeys")) {
                this.f18324c.setMaxKeys(XmlResponsesSaxParser.l(d()));
                return;
            }
            if (str2.equals("Delimiter")) {
                this.f18324c.setDelimiter(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18325d));
                return;
            }
            if (str2.equals("EncodingType")) {
                this.f18324c.setEncodingType(XmlResponsesSaxParser.g(d()));
                return;
            }
            if (!str2.equals("IsTruncated")) {
                if (str2.equals("Contents")) {
                    this.f18324c.getObjectSummaries().add(this.f18326e);
                    this.f18326e = null;
                    return;
                }
                return;
            }
            String strB = StringUtils.b(d());
            if (strB.startsWith("false")) {
                this.f18324c.setTruncated(false);
            } else {
                if (strB.startsWith("true")) {
                    this.f18324c.setTruncated(true);
                    return;
                }
                throw new IllegalStateException("Invalid value for IsTruncated field: " + strB);
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (!e("ListBucketResult")) {
                if (e("ListBucketResult", "Contents") && str2.equals("Owner")) {
                    this.f18327f = new Owner();
                    return;
                }
                return;
            }
            if (str2.equals("Contents")) {
                S3ObjectSummary s3ObjectSummary = new S3ObjectSummary();
                this.f18326e = s3ObjectSummary;
                s3ObjectSummary.b(this.f18324c.getBucketName());
            }
        }
    }

    public static class ListBucketInventoryConfigurationsHandler extends AbstractHandler {

        private final ListBucketInventoryConfigurationsResult f18329c = new ListBucketInventoryConfigurationsResult();

        private InventoryConfiguration f18330d;

        private List f18331e;

        private InventoryDestination f18332f;

        private InventoryFilter f18333g;

        private InventoryS3BucketDestination f18334h;

        private InventorySchedule f18335i;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("ListInventoryConfigurationsResult")) {
                if (str2.equals("InventoryConfiguration")) {
                    if (this.f18329c.getInventoryConfigurationList() == null) {
                        this.f18329c.setInventoryConfigurationList(new ArrayList());
                    }
                    this.f18329c.getInventoryConfigurationList().add(this.f18330d);
                    this.f18330d = null;
                    return;
                }
                if (str2.equals("IsTruncated")) {
                    this.f18329c.setTruncated("true".equals(d()));
                    return;
                } else if (str2.equals("ContinuationToken")) {
                    this.f18329c.setContinuationToken(d());
                    return;
                } else {
                    if (str2.equals("NextContinuationToken")) {
                        this.f18329c.setNextContinuationToken(d());
                        return;
                    }
                    return;
                }
            }
            if (e("ListInventoryConfigurationsResult", "InventoryConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18330d.setId(d());
                    return;
                }
                if (str2.equals("Destination")) {
                    this.f18330d.setDestination(this.f18332f);
                    this.f18332f = null;
                    return;
                }
                if (str2.equals("IsEnabled")) {
                    this.f18330d.setEnabled(Boolean.valueOf("true".equals(d())));
                    return;
                }
                if (str2.equals("Filter")) {
                    this.f18330d.setInventoryFilter(this.f18333g);
                    this.f18333g = null;
                    return;
                }
                if (str2.equals("IncludedObjectVersions")) {
                    this.f18330d.setIncludedObjectVersions(d());
                    return;
                }
                if (str2.equals("Schedule")) {
                    this.f18330d.setSchedule(this.f18335i);
                    this.f18335i = null;
                    return;
                } else {
                    if (str2.equals("OptionalFields")) {
                        this.f18330d.setOptionalFields(this.f18331e);
                        this.f18331e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f18332f.setS3BucketDestination(this.f18334h);
                    this.f18334h = null;
                    return;
                }
                return;
            }
            if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination", "S3BucketDestination")) {
                if (str2.equals("AccountId")) {
                    this.f18334h.setAccountId(d());
                    return;
                }
                if (str2.equals("Bucket")) {
                    this.f18334h.setBucketArn(d());
                    return;
                } else if (str2.equals("Format")) {
                    this.f18334h.setFormat(d());
                    return;
                } else {
                    if (str2.equals("Prefix")) {
                        this.f18334h.setPrefix(d());
                        return;
                    }
                    return;
                }
            }
            if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18333g.setPredicate(new InventoryPrefixPredicate(d()));
                }
            } else if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "Schedule")) {
                if (str2.equals("Frequency")) {
                    this.f18335i.setFrequency(d());
                }
            } else if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "OptionalFields") && str2.equals("Field")) {
                this.f18331e.add(d());
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListInventoryConfigurationsResult")) {
                if (str2.equals("InventoryConfiguration")) {
                    this.f18330d = new InventoryConfiguration();
                    return;
                }
                return;
            }
            if (!e("ListInventoryConfigurationsResult", "InventoryConfiguration")) {
                if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination") && str2.equals("S3BucketDestination")) {
                    this.f18334h = new InventoryS3BucketDestination();
                    return;
                }
                return;
            }
            if (str2.equals("Destination")) {
                this.f18332f = new InventoryDestination();
                return;
            }
            if (str2.equals("Filter")) {
                this.f18333g = new InventoryFilter();
            } else if (str2.equals("Schedule")) {
                this.f18335i = new InventorySchedule();
            } else if (str2.equals("OptionalFields")) {
                this.f18331e = new ArrayList();
            }
        }
    }

    public static class ListBucketMetricsConfigurationsHandler extends AbstractHandler {

        private final ListBucketMetricsConfigurationsResult f18336c = new ListBucketMetricsConfigurationsResult();

        private MetricsConfiguration f18337d;

        private MetricsFilter f18338e;

        private List f18339f;

        private String f18340g;

        private String f18341h;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("ListMetricsConfigurationsResult")) {
                if (str2.equals("MetricsConfiguration")) {
                    if (this.f18336c.getMetricsConfigurationList() == null) {
                        this.f18336c.setMetricsConfigurationList(new ArrayList());
                    }
                    this.f18336c.getMetricsConfigurationList().add(this.f18337d);
                    this.f18337d = null;
                    return;
                }
                if (str2.equals("IsTruncated")) {
                    this.f18336c.setTruncated("true".equals(d()));
                    return;
                } else if (str2.equals("ContinuationToken")) {
                    this.f18336c.setContinuationToken(d());
                    return;
                } else {
                    if (str2.equals("NextContinuationToken")) {
                        this.f18336c.setNextContinuationToken(d());
                        return;
                    }
                    return;
                }
            }
            if (e("ListMetricsConfigurationsResult", "MetricsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18337d.setId(d());
                    return;
                } else {
                    if (str2.equals("Filter")) {
                        this.f18337d.setFilter(this.f18338e);
                        this.f18338e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18338e.setPredicate(new MetricsPrefixPredicate(d()));
                    return;
                }
                if (str2.equals("Tag")) {
                    this.f18338e.setPredicate(new MetricsTagPredicate(new Tag(this.f18340g, this.f18341h)));
                    this.f18340g = null;
                    this.f18341h = null;
                    return;
                } else {
                    if (str2.equals("And")) {
                        this.f18338e.setPredicate(new MetricsAndOperator(this.f18339f));
                        this.f18339f = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18340g = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18341h = d();
                        return;
                    }
                    return;
                }
            }
            if (e("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f18339f.add(new MetricsPrefixPredicate(d()));
                    return;
                } else {
                    if (str2.equals("Tag")) {
                        this.f18339f.add(new MetricsTagPredicate(new Tag(this.f18340g, this.f18341h)));
                        this.f18340g = null;
                        this.f18341h = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18340g = d();
                } else if (str2.equals("Value")) {
                    this.f18341h = d();
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListMetricsConfigurationsResult")) {
                if (str2.equals("MetricsConfiguration")) {
                    this.f18337d = new MetricsConfiguration();
                }
            } else if (e("ListMetricsConfigurationsResult", "MetricsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f18338e = new MetricsFilter();
                }
            } else if (e("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter") && str2.equals("And")) {
                this.f18339f = new ArrayList();
            }
        }
    }

    public static class ListMultipartUploadsHandler extends AbstractHandler {

        private final MultipartUploadListing f18342c = new MultipartUploadListing();

        private MultipartUpload f18343d;

        private Owner f18344e;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("ListMultipartUploadsResult")) {
                if (str2.equals("Bucket")) {
                    this.f18342c.c(d());
                    return;
                }
                if (str2.equals("KeyMarker")) {
                    this.f18342c.f(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("Delimiter")) {
                    this.f18342c.d(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("Prefix")) {
                    this.f18342c.j(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("UploadIdMarker")) {
                    this.f18342c.l(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("NextKeyMarker")) {
                    this.f18342c.h(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("NextUploadIdMarker")) {
                    this.f18342c.i(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("MaxUploads")) {
                    this.f18342c.g(Integer.parseInt(d()));
                    return;
                }
                if (str2.equals("EncodingType")) {
                    this.f18342c.e(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("IsTruncated")) {
                    this.f18342c.k(Boolean.parseBoolean(d()));
                    return;
                } else {
                    if (str2.equals("Upload")) {
                        this.f18342c.b().add(this.f18343d);
                        this.f18343d = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListMultipartUploadsResult", "CommonPrefixes")) {
                if (str2.equals("Prefix")) {
                    this.f18342c.a().add(d());
                    return;
                }
                return;
            }
            if (!e("ListMultipartUploadsResult", "Upload")) {
                if (e("ListMultipartUploadsResult", "Upload", "Owner") || e("ListMultipartUploadsResult", "Upload", "Initiator")) {
                    if (str2.equals("ID")) {
                        this.f18344e.setId(XmlResponsesSaxParser.g(d()));
                        return;
                    } else {
                        if (str2.equals("DisplayName")) {
                            this.f18344e.setDisplayName(XmlResponsesSaxParser.g(d()));
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (str2.equals("Key")) {
                this.f18343d.c(d());
                return;
            }
            if (str2.equals("UploadId")) {
                this.f18343d.f(d());
                return;
            }
            if (str2.equals("Owner")) {
                this.f18343d.d(this.f18344e);
                this.f18344e = null;
            } else if (str2.equals("Initiator")) {
                this.f18343d.b(this.f18344e);
                this.f18344e = null;
            } else if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                this.f18343d.e(d());
            } else if (str2.equals("Initiated")) {
                this.f18343d.a(ServiceUtils.d(d()));
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListMultipartUploadsResult")) {
                if (str2.equals("Upload")) {
                    this.f18343d = new MultipartUpload();
                }
            } else if (e("ListMultipartUploadsResult", "Upload")) {
                if (str2.equals("Owner") || str2.equals("Initiator")) {
                    this.f18344e = new Owner();
                }
            }
        }
    }

    public static class ListObjectsV2Handler extends AbstractHandler {

        private final ListObjectsV2Result f18345c;

        private final boolean f18346d;

        private S3ObjectSummary f18347e;

        private Owner f18348f;

        private String f18349g;

        @Override
        protected void b(String str, String str2, String str3) {
            String strA = null;
            if (a()) {
                if (str2.equals("ListBucketResult") && this.f18345c.e() && this.f18345c.c() == null) {
                    if (this.f18345c.d().isEmpty()) {
                        XmlResponsesSaxParser.f18234c.f("S3 response indicates truncated results, but contains no object summaries.");
                    } else {
                        strA = ((S3ObjectSummary) this.f18345c.d().get(this.f18345c.d().size() - 1)).a();
                    }
                    this.f18345c.l(strA);
                    return;
                }
                return;
            }
            if (!e("ListBucketResult")) {
                if (!e("ListBucketResult", "Contents")) {
                    if (!e("ListBucketResult", "Contents", "Owner")) {
                        if (e("ListBucketResult", "CommonPrefixes") && str2.equals("Prefix")) {
                            this.f18345c.b().add(XmlResponsesSaxParser.h(d(), this.f18346d));
                            return;
                        }
                        return;
                    }
                    if (str2.equals("ID")) {
                        this.f18348f.setId(d());
                        return;
                    } else {
                        if (str2.equals("DisplayName")) {
                            this.f18348f.setDisplayName(d());
                            return;
                        }
                        return;
                    }
                }
                if (str2.equals("Key")) {
                    String strD = d();
                    this.f18349g = strD;
                    this.f18347e.d(XmlResponsesSaxParser.h(strD, this.f18346d));
                    return;
                }
                if (str2.equals("LastModified")) {
                    this.f18347e.e(ServiceUtils.d(d()));
                    return;
                }
                if (str2.equals("ETag")) {
                    this.f18347e.c(ServiceUtils.f(d()));
                    return;
                }
                if (str2.equals("Size")) {
                    this.f18347e.g(XmlResponsesSaxParser.m(d()));
                    return;
                }
                if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                    this.f18347e.h(d());
                    return;
                } else {
                    if (str2.equals("Owner")) {
                        this.f18347e.f(this.f18348f);
                        this.f18348f = null;
                        return;
                    }
                    return;
                }
            }
            if (str2.equals("Name")) {
                this.f18345c.f(d());
                if (XmlResponsesSaxParser.f18234c.b()) {
                    XmlResponsesSaxParser.f18234c.a("Examining listing for bucket: " + this.f18345c.a());
                    return;
                }
                return;
            }
            if (str2.equals("Prefix")) {
                this.f18345c.m(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18346d));
                return;
            }
            if (str2.equals("MaxKeys")) {
                this.f18345c.k(XmlResponsesSaxParser.l(d()));
                return;
            }
            if (str2.equals("NextContinuationToken")) {
                this.f18345c.l(d());
                return;
            }
            if (str2.equals("ContinuationToken")) {
                this.f18345c.g(d());
                return;
            }
            if (str2.equals("StartAfter")) {
                this.f18345c.n(XmlResponsesSaxParser.h(d(), this.f18346d));
                return;
            }
            if (str2.equals("KeyCount")) {
                this.f18345c.j(XmlResponsesSaxParser.l(d()));
                return;
            }
            if (str2.equals("Delimiter")) {
                this.f18345c.h(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18346d));
                return;
            }
            if (str2.equals("EncodingType")) {
                this.f18345c.i(XmlResponsesSaxParser.g(d()));
                return;
            }
            if (!str2.equals("IsTruncated")) {
                if (str2.equals("Contents")) {
                    this.f18345c.d().add(this.f18347e);
                    this.f18347e = null;
                    return;
                }
                return;
            }
            String strB = StringUtils.b(d());
            if (strB.startsWith("false")) {
                this.f18345c.o(false);
            } else {
                if (strB.startsWith("true")) {
                    this.f18345c.o(true);
                    return;
                }
                throw new IllegalStateException("Invalid value for IsTruncated field: " + strB);
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (!e("ListBucketResult")) {
                if (e("ListBucketResult", "Contents") && str2.equals("Owner")) {
                    this.f18348f = new Owner();
                    return;
                }
                return;
            }
            if (str2.equals("Contents")) {
                S3ObjectSummary s3ObjectSummary = new S3ObjectSummary();
                this.f18347e = s3ObjectSummary;
                s3ObjectSummary.b(this.f18345c.a());
            }
        }
    }

    public static class ListPartsHandler extends AbstractHandler {

        private final PartListing f18350c = new PartListing();

        private PartSummary f18351d;

        private Owner f18352e;

        private Integer f(String str) {
            String strG = XmlResponsesSaxParser.g(d());
            if (strG == null) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(strG));
        }

        @Override
        protected void b(String str, String str2, String str3) {
            if (!e("ListPartsResult")) {
                if (!e("ListPartsResult", "Part")) {
                    if (e("ListPartsResult", "Owner") || e("ListPartsResult", "Initiator")) {
                        if (str2.equals("ID")) {
                            this.f18352e.setId(XmlResponsesSaxParser.g(d()));
                            return;
                        } else {
                            if (str2.equals("DisplayName")) {
                                this.f18352e.setDisplayName(XmlResponsesSaxParser.g(d()));
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                if (str2.equals("PartNumber")) {
                    this.f18351d.c(Integer.parseInt(d()));
                    return;
                }
                if (str2.equals("LastModified")) {
                    this.f18351d.b(ServiceUtils.d(d()));
                    return;
                } else if (str2.equals("ETag")) {
                    this.f18351d.a(ServiceUtils.f(d()));
                    return;
                } else {
                    if (str2.equals("Size")) {
                        this.f18351d.d(Long.parseLong(d()));
                        return;
                    }
                    return;
                }
            }
            if (str2.equals("Bucket")) {
                this.f18350c.b(d());
                return;
            }
            if (str2.equals("Key")) {
                this.f18350c.e(d());
                return;
            }
            if (str2.equals("UploadId")) {
                this.f18350c.l(d());
                return;
            }
            if (str2.equals("Owner")) {
                this.f18350c.h(this.f18352e);
                this.f18352e = null;
                return;
            }
            if (str2.equals("Initiator")) {
                this.f18350c.d(this.f18352e);
                this.f18352e = null;
                return;
            }
            if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                this.f18350c.j(d());
                return;
            }
            if (str2.equals("PartNumberMarker")) {
                this.f18350c.i(f(d()).intValue());
                return;
            }
            if (str2.equals("NextPartNumberMarker")) {
                this.f18350c.g(f(d()).intValue());
                return;
            }
            if (str2.equals("MaxParts")) {
                this.f18350c.f(f(d()).intValue());
                return;
            }
            if (str2.equals("EncodingType")) {
                this.f18350c.c(XmlResponsesSaxParser.g(d()));
                return;
            }
            if (str2.equals("IsTruncated")) {
                this.f18350c.k(Boolean.parseBoolean(d()));
            } else if (str2.equals("Part")) {
                this.f18350c.a().add(this.f18351d);
                this.f18351d = null;
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListPartsResult")) {
                if (str2.equals("Part")) {
                    this.f18351d = new PartSummary();
                } else if (str2.equals("Owner") || str2.equals("Initiator")) {
                    this.f18352e = new Owner();
                }
            }
        }
    }

    public static class ListVersionsHandler extends AbstractHandler {

        private final VersionListing f18353c;

        private final boolean f18354d;

        private S3VersionSummary f18355e;

        private Owner f18356f;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("ListVersionsResult")) {
                if (str2.equals("Name")) {
                    this.f18353c.j(d());
                    return;
                }
                if (str2.equals("Prefix")) {
                    this.f18353c.q(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18354d));
                    return;
                }
                if (str2.equals("KeyMarker")) {
                    this.f18353c.m(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18354d));
                    return;
                }
                if (str2.equals("VersionIdMarker")) {
                    this.f18353c.s(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("MaxKeys")) {
                    this.f18353c.n(Integer.parseInt(d()));
                    return;
                }
                if (str2.equals("Delimiter")) {
                    this.f18353c.k(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18354d));
                    return;
                }
                if (str2.equals("EncodingType")) {
                    this.f18353c.l(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("NextKeyMarker")) {
                    this.f18353c.o(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18354d));
                    return;
                }
                if (str2.equals("NextVersionIdMarker")) {
                    this.f18353c.p(d());
                    return;
                }
                if (str2.equals("IsTruncated")) {
                    this.f18353c.r("true".equals(d()));
                    return;
                } else {
                    if (str2.equals("Version") || str2.equals("DeleteMarker")) {
                        this.f18353c.i().add(this.f18355e);
                        this.f18355e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListVersionsResult", "CommonPrefixes")) {
                if (str2.equals("Prefix")) {
                    String strG = XmlResponsesSaxParser.g(d());
                    List listB = this.f18353c.b();
                    if (this.f18354d) {
                        strG = S3HttpUtils.a(strG);
                    }
                    listB.add(strG);
                    return;
                }
                return;
            }
            if (!e("ListVersionsResult", "Version") && !e("ListVersionsResult", "DeleteMarker")) {
                if (e("ListVersionsResult", "Version", "Owner") || e("ListVersionsResult", "DeleteMarker", "Owner")) {
                    if (str2.equals("ID")) {
                        this.f18356f.setId(d());
                        return;
                    } else {
                        if (str2.equals("DisplayName")) {
                            this.f18356f.setDisplayName(d());
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (str2.equals("Key")) {
                this.f18355e.e(XmlResponsesSaxParser.h(d(), this.f18354d));
                return;
            }
            if (str2.equals("VersionId")) {
                this.f18355e.j(d());
                return;
            }
            if (str2.equals("IsLatest")) {
                this.f18355e.d("true".equals(d()));
                return;
            }
            if (str2.equals("LastModified")) {
                this.f18355e.f(ServiceUtils.d(d()));
                return;
            }
            if (str2.equals("ETag")) {
                this.f18355e.b(ServiceUtils.f(d()));
                return;
            }
            if (str2.equals("Size")) {
                this.f18355e.h(Long.parseLong(d()));
                return;
            }
            if (str2.equals("Owner")) {
                this.f18355e.g(this.f18356f);
                this.f18356f = null;
            } else if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                this.f18355e.i(d());
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (!e("ListVersionsResult")) {
                if ((e("ListVersionsResult", "Version") || e("ListVersionsResult", "DeleteMarker")) && str2.equals("Owner")) {
                    this.f18356f = new Owner();
                    return;
                }
                return;
            }
            if (str2.equals("Version")) {
                S3VersionSummary s3VersionSummary = new S3VersionSummary();
                this.f18355e = s3VersionSummary;
                s3VersionSummary.a(this.f18353c.a());
            } else if (str2.equals("DeleteMarker")) {
                S3VersionSummary s3VersionSummary2 = new S3VersionSummary();
                this.f18355e = s3VersionSummary2;
                s3VersionSummary2.a(this.f18353c.a());
                this.f18355e.c(true);
            }
        }
    }

    public XmlResponsesSaxParser() throws AmazonClientException {
        this.f18235a = null;
        try {
            this.f18235a = XMLReaderFactory.createXMLReader();
        } catch (SAXException e10) {
            System.setProperty("org.xml.sax.driver", "org.xmlpull.v1.sax2.Driver");
            try {
                this.f18235a = XMLReaderFactory.createXMLReader();
            } catch (SAXException unused) {
                throw new AmazonClientException("Couldn't initialize a sax driver for the XMLReader", e10);
            }
        }
    }

    public static String g(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return str;
    }

    public static String h(String str, boolean z10) {
        return z10 ? S3HttpUtils.a(str) : str;
    }

    public static String i(String str, Attributes attributes) {
        if (!StringUtils.a(str) && attributes != null) {
            for (int i10 = 0; i10 < attributes.getLength(); i10++) {
                if (attributes.getQName(i10).trim().equalsIgnoreCase(str.trim())) {
                    return attributes.getValue(i10);
                }
            }
        }
        return null;
    }

    public static int l(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e10) {
            f18234c.e("Unable to parse integer value '" + str + "'", e10);
            return -1;
        }
    }

    public static long m(String str) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e10) {
            f18234c.e("Unable to parse long value '" + str + "'", e10);
            return -1L;
        }
    }

    public CompleteMultipartUploadHandler j(InputStream inputStream) throws IOException {
        CompleteMultipartUploadHandler completeMultipartUploadHandler = new CompleteMultipartUploadHandler();
        n(completeMultipartUploadHandler, inputStream);
        return completeMultipartUploadHandler;
    }

    public InitiateMultipartUploadHandler k(InputStream inputStream) throws IOException {
        InitiateMultipartUploadHandler initiateMultipartUploadHandler = new InitiateMultipartUploadHandler();
        n(initiateMultipartUploadHandler, inputStream);
        return initiateMultipartUploadHandler;
    }

    protected void n(DefaultHandler defaultHandler, InputStream inputStream) throws IOException {
        try {
            Log log = f18234c;
            if (log.b()) {
                log.a("Parsing XML response document with handler: " + defaultHandler.getClass());
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            this.f18235a.setContentHandler(defaultHandler);
            this.f18235a.setErrorHandler(defaultHandler);
            this.f18235a.parse(new InputSource(bufferedReader));
        } catch (IOException e10) {
            throw e10;
        } catch (Throwable th2) {
            try {
                inputStream.close();
            } catch (IOException e11) {
                if (f18234c.h()) {
                    f18234c.e("Unable to close response InputStream up after XML parse failure", e11);
                }
            }
            throw new AmazonClientException("Failed to parse XML document with handler " + defaultHandler.getClass(), th2);
        }
    }

    public static class BucketAccelerateConfigurationHandler extends AbstractHandler {

        private final BucketAccelerateConfiguration f18240c = new BucketAccelerateConfiguration(null);

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("AccelerateConfiguration") && str2.equals("Status")) {
                this.f18240c.a(d());
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }
    }

    public static class BucketLocationHandler extends AbstractHandler {

        private String f18256c = null;

        @Override
        protected void b(String str, String str2, String str3) {
            if (a() && str2.equals(CreateBucketRequest.TAB_LOCATIONCONSTRAINT)) {
                String strD = d();
                if (strD.length() == 0) {
                    this.f18256c = null;
                } else {
                    this.f18256c = strD;
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }
    }

    public static class BucketLoggingConfigurationHandler extends AbstractHandler {

        private final BucketLoggingConfiguration f18257c = new BucketLoggingConfiguration();

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("BucketLoggingStatus", "LoggingEnabled")) {
                if (str2.equals("TargetBucket")) {
                    this.f18257c.setDestinationBucketName(d());
                } else if (str2.equals("TargetPrefix")) {
                    this.f18257c.setLogFilePrefix(d());
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }
    }

    public static class BucketVersioningConfigurationHandler extends AbstractHandler {

        private final BucketVersioningConfiguration f18266c = new BucketVersioningConfiguration();

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("VersioningConfiguration")) {
                if (str2.equals("Status")) {
                    this.f18266c.setStatus(d());
                    return;
                }
                if (str2.equals("MfaDelete")) {
                    String strD = d();
                    if (strD.equals(BucketLifecycleConfiguration.DISABLED)) {
                        this.f18266c.setMfaDeleteEnabled(Boolean.FALSE);
                    } else if (strD.equals("Enabled")) {
                        this.f18266c.setMfaDeleteEnabled(Boolean.TRUE);
                    } else {
                        this.f18266c.setMfaDeleteEnabled(null);
                    }
                }
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }
    }

    public static class InitiateMultipartUploadHandler extends AbstractHandler {

        private final InitiateMultipartUploadResult f18310c = new InitiateMultipartUploadResult();

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("InitiateMultipartUploadResult")) {
                if (str2.equals("Bucket")) {
                    this.f18310c.setBucketName(d());
                } else if (str2.equals("Key")) {
                    this.f18310c.setKey(d());
                } else if (str2.equals("UploadId")) {
                    this.f18310c.b(d());
                }
            }
        }

        public InitiateMultipartUploadResult f() {
            return this.f18310c;
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }
    }

    public static class RequestPaymentConfigurationHandler extends AbstractHandler {

        private String f18357c = null;

        @Override
        protected void b(String str, String str2, String str3) {
            if (e("RequestPaymentConfiguration") && str2.equals("Payer")) {
                this.f18357c = d();
            }
        }

        @Override
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }
    }
}
