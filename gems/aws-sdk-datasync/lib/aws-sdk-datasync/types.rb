# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DataSync
  module Types

    # Represents a single entry in a list of agents. `AgentListEntry`
    # returns an array that contains a list of agents when the ListAgents
    # operation is called.
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/AgentListEntry AWS API Documentation
    #
    class AgentListEntry < Struct.new(
      :agent_arn,
      :name,
      :status)
      include Aws::Structure
    end

    # CancelTaskExecutionRequest
    #
    # @note When making an API call, you may pass CancelTaskExecutionRequest
    #   data as a hash:
    #
    #       {
    #         task_execution_arn: "TaskExecutionArn", # required
    #       }
    #
    # @!attribute [rw] task_execution_arn
    #   The Amazon Resource Name (ARN) of the task execution to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CancelTaskExecutionRequest AWS API Documentation
    #
    class CancelTaskExecutionRequest < Struct.new(
      :task_execution_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CancelTaskExecutionResponse AWS API Documentation
    #
    class CancelTaskExecutionResponse < Aws::EmptyStructure; end

    # CreateAgentRequest
    #
    # @note When making an API call, you may pass CreateAgentRequest
    #   data as a hash:
    #
    #       {
    #         activation_key: "ActivationKey", # required
    #         agent_name: "TagValue",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] activation_key
    #   Your agent activation key. You can get the activation key either by
    #   sending an HTTP GET request with redirects that enable you to get
    #   the agent IP address (port 80). Alternatively, you can get it from
    #   the AWS DataSync console.
    #
    #   The redirect URL returned in the response provides you the
    #   activation key for your agent in the query string parameter
    #   `activationKey`. It might also include other activation-related
    #   parameters; however, these are merely defaults. The arguments you
    #   pass to this API call determine the actual configuration of your
    #   agent. For more information, see [Activating a Sync Agent][1] in the
    #   *AWS DataSync User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sync-service/latest/userguide/working-with-sync-agents.html#activating-sync-agent
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The name you configured for your agent. This value is a text
    #   reference that is used to identify the agent in the console.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag you want to associate
    #   with the agent. The value can be an empty string. This value helps
    #   you manage, filter, and search for your agents.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @.
    #
    #    </note>
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateAgentRequest AWS API Documentation
    #
    class CreateAgentRequest < Struct.new(
      :activation_key,
      :agent_name,
      :tags)
      include Aws::Structure
    end

    # CreateAgentResponse
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent. Use the `ListAgents`
    #   operation to return a list of agents for your account and AWS
    #   Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateAgentResponse AWS API Documentation
    #
    class CreateAgentResponse < Struct.new(
      :agent_arn)
      include Aws::Structure
    end

    # CreateLocationEfsRequest
    #
    # @note When making an API call, you may pass CreateLocationEfsRequest
    #   data as a hash:
    #
    #       {
    #         subdirectory: "Subdirectory", # required
    #         efs_filesystem_arn: "EfsFilesystemArn", # required
    #         ec2_config: { # required
    #           subnet_arn: "Ec2SubnetArn", # required
    #           security_group_arns: ["Ec2SecurityGroupArn"], # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] subdirectory
    #   A subdirectory in the location’s path. This subdirectory in the EFS
    #   file system is used to read data from the EFS source location or
    #   write data to the EFS destination. By default, AWS DataSync uses the
    #   root directory.
    #   @return [String]
    #
    # @!attribute [rw] efs_filesystem_arn
    #   The Amazon Resource Name (ARN) for the Amazon EFS file system.
    #   @return [String]
    #
    # @!attribute [rw] ec2_config
    #   The subnet and security group that the Amazon EFS file system uses.
    #   @return [Types::Ec2Config]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents a tag that you want to add to the
    #   resource. The value can be an empty string. This value helps you
    #   manage, filter, and search for your resources. We recommend that you
    #   create a name tag for your location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationEfsRequest AWS API Documentation
    #
    class CreateLocationEfsRequest < Struct.new(
      :subdirectory,
      :efs_filesystem_arn,
      :ec2_config,
      :tags)
      include Aws::Structure
    end

    # CreateLocationEfs
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the Amazon EFS file system
    #   location that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationEfsResponse AWS API Documentation
    #
    class CreateLocationEfsResponse < Struct.new(
      :location_arn)
      include Aws::Structure
    end

    # CreateLocationNfsRequest
    #
    # @note When making an API call, you may pass CreateLocationNfsRequest
    #   data as a hash:
    #
    #       {
    #         subdirectory: "Subdirectory", # required
    #         server_hostname: "ServerHostname", # required
    #         on_prem_config: { # required
    #           agent_arns: ["AgentArn"], # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] subdirectory
    #   The subdirectory in the NFS file system that is used to read data
    #   from the NFS source location or write data to the NFS destination.
    #   The NFS path should be a path that's exported by the NFS server, or
    #   a subdirectory of that path. The path should be such that it can be
    #   mounted by other NFS clients in your network.
    #
    #   To see all the paths exported by your NFS server. run "`showmount
    #   -e nfs-server-name`" from an NFS client that has access to your
    #   server. You can specify any directory that appears in the results,
    #   and any subdirectory of that directory. Ensure that the NFS export
    #   is accessible without Kerberos authentication.
    #
    #   To transfer all the data in the folder you specified, DataSync needs
    #   to have permissions to read all the data. To ensure this, either
    #   configure the NFS export with `no_root_squash,` or ensure that the
    #   permissions for all of the files that you want sync allow read
    #   access for all users. Doing either enables the agent to read the
    #   files. For the agent to access directories, you must additionally
    #   enable all execute access. For information about NFS export
    #   configuration, see [18.7. The /etc/exports Configuration File][1] in
    #   the Centos documentation.
    #
    #
    #
    #   [1]: https://www.centos.org/docs/5/html/Deployment_Guide-en-US/s1-nfs-server-config-exports.html
    #   @return [String]
    #
    # @!attribute [rw] server_hostname
    #   The name of the NFS server. This value is the IP address or Domain
    #   Name Service (DNS) name of the NFS server. An agent that is
    #   installed on-premises uses this host name to mount the NFS server in
    #   a network.
    #
    #   <note markdown="1"> This name must either be DNS-compliant or must be an IP version 4
    #   (IPv4) address.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] on_prem_config
    #   Contains a list of Amazon Resource Names (ARNs) of agents that are
    #   used to connect to an NFS server.
    #   @return [Types::OnPremConfig]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag that you want to add to
    #   the location. The value can be an empty string. We recommend using
    #   tags to name your resources.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationNfsRequest AWS API Documentation
    #
    class CreateLocationNfsRequest < Struct.new(
      :subdirectory,
      :server_hostname,
      :on_prem_config,
      :tags)
      include Aws::Structure
    end

    # CreateLocationNfsResponse
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the source NFS file system
    #   location that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationNfsResponse AWS API Documentation
    #
    class CreateLocationNfsResponse < Struct.new(
      :location_arn)
      include Aws::Structure
    end

    # CreateLocationS3Request
    #
    # @note When making an API call, you may pass CreateLocationS3Request
    #   data as a hash:
    #
    #       {
    #         subdirectory: "Subdirectory", # required
    #         s3_bucket_arn: "S3BucketArn", # required
    #         s3_config: { # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] subdirectory
    #   A subdirectory in the Amazon S3 bucket. This subdirectory in Amazon
    #   S3 is used to read data from the S3 source location or write data to
    #   the S3 destination.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_config
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that is used to access an Amazon S3 bucket.
    #   For detailed information about using such a role, see [Components
    #   and Terminology][1] in the *AWS DataSync User Guide*.
    #
    #
    #
    #   [1]: https://alpha-aws-docs.aws.amazon.com/sync-service/latest/userguide/create-locations-cli.html#create-location-s3-cli
    #   @return [Types::S3Config]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag that you want to add to
    #   the location. The value can be an empty string. We recommend using
    #   tags to name your resources.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationS3Request AWS API Documentation
    #
    class CreateLocationS3Request < Struct.new(
      :subdirectory,
      :s3_bucket_arn,
      :s3_config,
      :tags)
      include Aws::Structure
    end

    # CreateLocationS3Response
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the source Amazon S3 bucket
    #   location that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationS3Response AWS API Documentation
    #
    class CreateLocationS3Response < Struct.new(
      :location_arn)
      include Aws::Structure
    end

    # CreateTaskRequest
    #
    # @note When making an API call, you may pass CreateTaskRequest
    #   data as a hash:
    #
    #       {
    #         source_location_arn: "LocationArn", # required
    #         destination_location_arn: "LocationArn", # required
    #         cloud_watch_log_group_arn: "LogGroupArn",
    #         name: "TagValue",
    #         options: {
    #           verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, NONE
    #           atime: "NONE", # accepts NONE, BEST_EFFORT
    #           mtime: "NONE", # accepts NONE, PRESERVE
    #           uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #           preserve_devices: "NONE", # accepts NONE, PRESERVE
    #           posix_permissions: "NONE", # accepts NONE, BEST_EFFORT, PRESERVE
    #           bytes_per_second: 1,
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_location_arn
    #   The Amazon Resource Name (ARN) of the source location for the task.
    #   @return [String]
    #
    # @!attribute [rw] destination_location_arn
    #   The Amazon Resource Name (ARN) of an AWS storage resource's
    #   location.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch log group
    #   that is used to monitor and log events in the task. For more
    #   information on these groups, see [Working with Log Groups and Log
    #   Streams][1] in the <i>Amazon CloudWatch User Guide. </i>
    #
    #   For more information about how to useCloudWatchLogs with DataSync,
    #   see [Monitoring Your Task][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/monitor-datasync.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a task. This value is a text reference that is used to
    #   identify the task in the console.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The set of configuration options that control the behavior of a
    #   single execution of the task that occurs when you call
    #   `StartTaskExecution`. You can configure these options to preserve
    #   metadata such as user ID (UID) and group ID (GID), file permissions,
    #   data integrity verification, and so on.
    #
    #   For each individual task execution, you can override these options
    #   by specifying the `OverrideOptions` before starting a the task
    #   execution. For more information, see the operation.
    #   @return [Types::Options]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag that you want to add to
    #   the resource. The value can be an empty string.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateTaskRequest AWS API Documentation
    #
    class CreateTaskRequest < Struct.new(
      :source_location_arn,
      :destination_location_arn,
      :cloud_watch_log_group_arn,
      :name,
      :options,
      :tags)
      include Aws::Structure
    end

    # CreateTaskResponse
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateTaskResponse AWS API Documentation
    #
    class CreateTaskResponse < Struct.new(
      :task_arn)
      include Aws::Structure
    end

    # DeleteAgentRequest
    #
    # @note When making an API call, you may pass DeleteAgentRequest
    #   data as a hash:
    #
    #       {
    #         agent_arn: "AgentArn", # required
    #       }
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent to delete. Use the
    #   `ListAgents` operation to return a list of agents for your account
    #   and AWS Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteAgentRequest AWS API Documentation
    #
    class DeleteAgentRequest < Struct.new(
      :agent_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteAgentResponse AWS API Documentation
    #
    class DeleteAgentResponse < Aws::EmptyStructure; end

    # DeleteLocation
    #
    # @note When making an API call, you may pass DeleteLocationRequest
    #   data as a hash:
    #
    #       {
    #         location_arn: "LocationArn", # required
    #       }
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the location to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteLocationRequest AWS API Documentation
    #
    class DeleteLocationRequest < Struct.new(
      :location_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteLocationResponse AWS API Documentation
    #
    class DeleteLocationResponse < Aws::EmptyStructure; end

    # DeleteTask
    #
    # @note When making an API call, you may pass DeleteTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_arn: "TaskArn", # required
    #       }
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteTaskRequest AWS API Documentation
    #
    class DeleteTaskRequest < Struct.new(
      :task_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteTaskResponse AWS API Documentation
    #
    class DeleteTaskResponse < Aws::EmptyStructure; end

    # DescribeAgent
    #
    # @note When making an API call, you may pass DescribeAgentRequest
    #   data as a hash:
    #
    #       {
    #         agent_arn: "AgentArn", # required
    #       }
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeAgentRequest AWS API Documentation
    #
    class DescribeAgentRequest < Struct.new(
      :agent_arn)
      include Aws::Structure
    end

    # DescribeAgentResponse
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the agent. If the status is ONLINE, then the agent is
    #   configured properly and is available to use. The Running status is
    #   the normal running status for an agent. If the status is OFFLINE,
    #   the agent's VM is turned off or the agent is in an unhealthy state.
    #   When the issue that caused the unhealthy state is resolved, the
    #   agent returns to ONLINE status.
    #   @return [String]
    #
    # @!attribute [rw] last_connection_time
    #   The time that the agent was last connected.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The time that the agent was activated (that is, created in your
    #   account).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeAgentResponse AWS API Documentation
    #
    class DescribeAgentResponse < Struct.new(
      :agent_arn,
      :name,
      :status,
      :last_connection_time,
      :creation_time)
      include Aws::Structure
    end

    # DescribeLocationEfsRequest
    #
    # @note When making an API call, you may pass DescribeLocationEfsRequest
    #   data as a hash:
    #
    #       {
    #         location_arn: "LocationArn", # required
    #       }
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the EFS location to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationEfsRequest AWS API Documentation
    #
    class DescribeLocationEfsRequest < Struct.new(
      :location_arn)
      include Aws::Structure
    end

    # DescribeLocationEfsResponse
    #
    # @!attribute [rw] location_arn
    #   The Amazon resource Name (ARN) of the EFS location that was
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the EFS location that was described.
    #   @return [String]
    #
    # @!attribute [rw] ec2_config
    #   The subnet and the security group that the target Amazon EFS file
    #   system uses. The subnet must have at least one mount target for that
    #   file system. The security group that you provide needs to be able to
    #   communicate with the security group on the mount target in the
    #   subnet specified.
    #
    #   The exact relationship between security group M (of the mount
    #   target) and security group S (which you provide for DataSync to use
    #   at this stage) is as follows:
    #
    #   * Security group M (which you associate with the mount target) must
    #     allow inbound access for the Transmission Control Protocol (TCP)
    #     on the NFS port (2049) from security group S. You can enable
    #     inbound connections either by IP address (CIDR range) or security
    #     group.
    #
    #   * Security group S (provided to DataSync to access EFS) should have
    #     a rule that enables outbound connections to the NFS port on one of
    #     the file system’s mount targets. You can enable outbound
    #     connections either by IP address (CIDR range) or security group.
    #     For information about security groups and mount targets, see
    #     [Security Groups for Amazon EC2 Instances and Mount Targets][1] in
    #     the *Amazon EFS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/security-considerations.html#network-access
    #   @return [Types::Ec2Config]
    #
    # @!attribute [rw] creation_time
    #   The time that the EFS location was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationEfsResponse AWS API Documentation
    #
    class DescribeLocationEfsResponse < Struct.new(
      :location_arn,
      :location_uri,
      :ec2_config,
      :creation_time)
      include Aws::Structure
    end

    # DescribeLocationNfsRequest
    #
    # @note When making an API call, you may pass DescribeLocationNfsRequest
    #   data as a hash:
    #
    #       {
    #         location_arn: "LocationArn", # required
    #       }
    #
    # @!attribute [rw] location_arn
    #   The Amazon resource Name (ARN) of the NFS location to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationNfsRequest AWS API Documentation
    #
    class DescribeLocationNfsRequest < Struct.new(
      :location_arn)
      include Aws::Structure
    end

    # DescribeLocationNfsResponse
    #
    # @!attribute [rw] location_arn
    #   The Amazon resource Name (ARN) of the NFS location that was
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the source NFS location that was described.
    #   @return [String]
    #
    # @!attribute [rw] on_prem_config
    #   A list of Amazon Resource Names (ARNs) of agents to use for a
    #   Network File System (NFS) location.
    #   @return [Types::OnPremConfig]
    #
    # @!attribute [rw] creation_time
    #   The time that the NFS location was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationNfsResponse AWS API Documentation
    #
    class DescribeLocationNfsResponse < Struct.new(
      :location_arn,
      :location_uri,
      :on_prem_config,
      :creation_time)
      include Aws::Structure
    end

    # DescribeLocationS3Request
    #
    # @note When making an API call, you may pass DescribeLocationS3Request
    #   data as a hash:
    #
    #       {
    #         location_arn: "LocationArn", # required
    #       }
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket location to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationS3Request AWS API Documentation
    #
    class DescribeLocationS3Request < Struct.new(
      :location_arn)
      include Aws::Structure
    end

    # DescribeLocationS3Response
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the Amazon S3 location that was described.
    #   @return [String]
    #
    # @!attribute [rw] s3_config
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that is used to access an Amazon S3 bucket.
    #   For detailed information about using such a role, see [Components
    #   and Terminology][1] in the *AWS DataSync User Guide*.
    #
    #
    #
    #   [1]: https://alpha-aws-docs.aws.amazon.com/sync-service/latest/userguide/create-locations-cli.html#create-location-s3-cli
    #   @return [Types::S3Config]
    #
    # @!attribute [rw] creation_time
    #   The time that the Amazon S3 bucket location was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationS3Response AWS API Documentation
    #
    class DescribeLocationS3Response < Struct.new(
      :location_arn,
      :location_uri,
      :s3_config,
      :creation_time)
      include Aws::Structure
    end

    # DescribeTaskExecutionRequest
    #
    # @note When making an API call, you may pass DescribeTaskExecutionRequest
    #   data as a hash:
    #
    #       {
    #         task_execution_arn: "TaskExecutionArn", # required
    #       }
    #
    # @!attribute [rw] task_execution_arn
    #   The Amazon Resource Name (ARN) of the task that is being executed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTaskExecutionRequest AWS API Documentation
    #
    class DescribeTaskExecutionRequest < Struct.new(
      :task_execution_arn)
      include Aws::Structure
    end

    # DescribeTaskExecutionResponse
    #
    # @!attribute [rw] task_execution_arn
    #   The Amazon Resource Name (ARN) of the task execution that was
    #   described. `TaskExecutionArn` is hierarchical and includes `TaskArn`
    #   for the task that was executed.
    #
    #   For example, a `TaskExecution` value with the ARN
    #   `arn:aws:sync:us-east-1:209870788375:task/task-0208075f79cedf4a2/execution/exec-08ef1e88ec491019b`
    #   executed the task with the ARN
    #   `arn:aws:sync:us-east-1:209870788375:task/task-0208075f79cedf4a2`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task. For detailed information about sync
    #   statuses, see [Understanding Sync Task Statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sync-service/latest/userguide/understand-sync-task-statuses.html
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Represents the options that are available to control the behavior of
    #   a StartTaskExecution operation. Behavior includes preserving
    #   metadata such as user ID (UID), group ID (GID), and file
    #   permissions, and also overwriting files in the destination, data
    #   integrity verification, and so on.
    #
    #   A task has a set of default options associated with it. If you
    #   don't specify an option in StartTaskExecution, the default value is
    #   used. You can override the defaults options on each task execution
    #   by specifying an overriding `Options` value to StartTaskExecution.
    #   @return [Types::Options]
    #
    # @!attribute [rw] start_time
    #   The time that the task execution was started.
    #   @return [Time]
    #
    # @!attribute [rw] estimated_files_to_transfer
    #   The expected number of files that is to be transferred over the
    #   network. This value is calculated during the PREPARING phase, before
    #   the TRANSFERRING phase. This value is the expected number of files
    #   to be transferred. It's calculated based on comparing the content
    #   of the source and destination locations and finding the delta that
    #   needs to be transferred.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_bytes_to_transfer
    #   The estimated physical number of bytes that is to be transferred
    #   over the network.
    #   @return [Integer]
    #
    # @!attribute [rw] files_transferred
    #   The actual number of files that was transferred over the network.
    #   This value is calculated and updated on an ongoing basis during the
    #   TRANSFERRING phase. It's updated periodically when each file is
    #   read from the source and sent over the network.
    #
    #   If failures occur during a transfer, this value can be less than
    #   `EstimatedFilesToTransfer`. This value can also be greater than
    #   `EstimatedFilesTransferred` in some cases. This element is
    #   implementation-specific for some location types, so don't use it as
    #   an indicator for a correct file number or to monitor your task
    #   execution.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_written
    #   The number of logical bytes written to the destination AWS storage
    #   resource.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_transferred
    #   The physical number of bytes transferred over the network.
    #   @return [Integer]
    #
    # @!attribute [rw] result
    #   The result of the task execution.
    #   @return [Types::TaskExecutionResultDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTaskExecutionResponse AWS API Documentation
    #
    class DescribeTaskExecutionResponse < Struct.new(
      :task_execution_arn,
      :status,
      :options,
      :start_time,
      :estimated_files_to_transfer,
      :estimated_bytes_to_transfer,
      :files_transferred,
      :bytes_written,
      :bytes_transferred,
      :result)
      include Aws::Structure
    end

    # DescribeTaskRequest
    #
    # @note When making an API call, you may pass DescribeTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_arn: "TaskArn", # required
    #       }
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTaskRequest AWS API Documentation
    #
    class DescribeTaskRequest < Struct.new(
      :task_arn)
      include Aws::Structure
    end

    # DescribeTaskResponse
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task that was described.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task that was described. For detailed information
    #   about sync statuses, see [Understanding Sync Task Statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sync-service/latest/userguide/understand-sync-task-statuses.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the task that was described.
    #   @return [String]
    #
    # @!attribute [rw] current_task_execution_arn
    #   The Amazon Resource Name (ARN) of the task execution that is syncing
    #   files.
    #   @return [String]
    #
    # @!attribute [rw] source_location_arn
    #   The Amazon Resource Name (ARN) of the source file system's
    #   location.
    #   @return [String]
    #
    # @!attribute [rw] destination_location_arn
    #   The Amazon Resource Name (ARN) of the AWS storage resource's
    #   location.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch log group
    #   that was used to monitor and log events in the task. For more
    #   information on these groups, see [Working with Log Groups and Log
    #   Streams][1] in the *Amazon CloudWatch User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The set of configuration options that control the behavior of a
    #   single execution of the task that occurs when you call
    #   `StartTaskExecution`. You can configure these options to preserve
    #   metadata such as user ID (UID) and group (GID), file permissions,
    #   data integrity verification, and so on.
    #
    #   For each individual task execution, you can override these options
    #   by specifying the overriding `OverrideOptions` value to operation.
    #   @return [Types::Options]
    #
    # @!attribute [rw] error_code
    #   Errors that AWS DataSync encountered during execution of the task.
    #   You can use this error code to help troubleshoot issues.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   Detailed description of an error that was encountered during the
    #   task execution. You can use this information to help troubleshoot
    #   issues.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that the task was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTaskResponse AWS API Documentation
    #
    class DescribeTaskResponse < Struct.new(
      :task_arn,
      :status,
      :name,
      :current_task_execution_arn,
      :source_location_arn,
      :destination_location_arn,
      :cloud_watch_log_group_arn,
      :options,
      :error_code,
      :error_detail,
      :creation_time)
      include Aws::Structure
    end

    # The subnet and the security group that the target Amazon EFS file
    # system uses. The subnet must have at least one mount target for that
    # file system. The security group that you provide needs to be able to
    # communicate with the security group on the mount target in the subnet
    # specified.
    #
    # The exact relationship between security group M (of the mount target)
    # and security group S (which you provide for DataSync to use at this
    # stage) is as follows:
    #
    # * Security group M (which you associate with the mount target) must
    #   allow inbound access for the Transmission Control Protocol (TCP) on
    #   the NFS port (2049) from security group S. You can enable inbound
    #   connections either by IP address (CIDR range) or security group.
    #
    # * Security group S (provided to DataSync to access EFS) should have a
    #   rule that enables outbound connections to the NFS port on one of the
    #   file system’s mount targets. You can enable outbound connections
    #   either by IP address (CIDR range) or security group. For information
    #   about security groups and mount targets, see [Security Groups for
    #   Amazon EC2 Instances and Mount Targets][1] in the *Amazon EFS User
    #   Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/efs/latest/ug/security-considerations.html#network-access
    #
    # @note When making an API call, you may pass Ec2Config
    #   data as a hash:
    #
    #       {
    #         subnet_arn: "Ec2SubnetArn", # required
    #         security_group_arns: ["Ec2SecurityGroupArn"], # required
    #       }
    #
    # @!attribute [rw] subnet_arn
    #   The ARN of the subnet that the Amazon EC2 resource belongs in.
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   The Amazon Resource Names (ARNs) of the security groups that are
    #   configured for the Amazon EC2 resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/Ec2Config AWS API Documentation
    #
    class Ec2Config < Struct.new(
      :subnet_arn,
      :security_group_arns)
      include Aws::Structure
    end

    # ListAgentsRequest
    #
    # @note When making an API call, you may pass ListAgentsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of agents to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of agents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListAgentsRequest AWS API Documentation
    #
    class ListAgentsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # ListAgentsResponse
    #
    # @!attribute [rw] agents
    #   A list of agents in your account.
    #   @return [Array<Types::AgentListEntry>]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin
    #   returning the next list of agents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListAgentsResponse AWS API Documentation
    #
    class ListAgentsResponse < Struct.new(
      :agents,
      :next_token)
      include Aws::Structure
    end

    # ListLocationsRequest
    #
    # @note When making an API call, you may pass ListLocationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of locations to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of locations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListLocationsRequest AWS API Documentation
    #
    class ListLocationsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # ListLocationsResponse
    #
    # @!attribute [rw] locations
    #   An array that contains a list of locations.
    #   @return [Array<Types::LocationListEntry>]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin
    #   returning the next list of locations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListLocationsResponse AWS API Documentation
    #
    class ListLocationsResponse < Struct.new(
      :locations,
      :next_token)
      include Aws::Structure
    end

    # ListTagsForResourceRequest
    #
    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TaggableResourceArn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of locations to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of locations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # ListTagsForResourceResponse
    #
    # @!attribute [rw] tags
    #   Array of resource tags.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin
    #   returning the next list of resource tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      include Aws::Structure
    end

    # ListTaskExecutions
    #
    # @note When making an API call, you may pass ListTaskExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         task_arn: "TaskArn",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task whose tasks you want to
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of executed tasks to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of the executed tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTaskExecutionsRequest AWS API Documentation
    #
    class ListTaskExecutionsRequest < Struct.new(
      :task_arn,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # ListTaskExecutionsResponse
    #
    # @!attribute [rw] task_executions
    #   A list of executed tasks.
    #   @return [Array<Types::TaskExecutionListEntry>]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin
    #   returning the next list of executed tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTaskExecutionsResponse AWS API Documentation
    #
    class ListTaskExecutionsResponse < Struct.new(
      :task_executions,
      :next_token)
      include Aws::Structure
    end

    # ListTasksRequest
    #
    # @note When making an API call, you may pass ListTasksRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of tasks to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTasksRequest AWS API Documentation
    #
    class ListTasksRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # ListTasksResponse
    #
    # @!attribute [rw] tasks
    #   A list of all the tasks that are returned.
    #   @return [Array<Types::TaskListEntry>]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin
    #   returning the next list of tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTasksResponse AWS API Documentation
    #
    class ListTasksResponse < Struct.new(
      :tasks,
      :next_token)
      include Aws::Structure
    end

    # Represents a single entry in a list of locations. `LocationListEntry`
    # returns an array that contains a list of locations when the
    # ListLocations operation is called.
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the location. For Network File
    #   System (NFS) or Amazon EFS, the location is the export path. For
    #   Amazon S3, the location is the prefix path that you want to mount
    #   and use as the root of the location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   Represents a list of URLs of a location. `LocationUri` returns an
    #   array that contains a list of locations when the ListLocations
    #   operation is called.
    #
    #   Format: `TYPE://GLOBAL_ID/SUBDIR`.
    #
    #   TYPE designates the type of location. Valid values: NFS \| EFS \|
    #   S3.
    #
    #   GLOBAL\_ID is the globally unique identifier of the resource that
    #   backs the location. An example for EFS is `us-east-2.fs-abcd1234`.
    #   An example for Amazon S3 is the bucket name, such as `myBucket`. An
    #   example for NFS is a valid IPv4 address or a host name compliant
    #   with Domain Name Service (DNS).
    #
    #   SUBDIR is a valid file system path, delimited by forward slashes as
    #   is the *nix convention. For NFS and Amazon EFS, it's the export
    #   path to mount the location. For Amazon S3, it's the prefix path
    #   that you mount to and treat as the root of the location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/LocationListEntry AWS API Documentation
    #
    class LocationListEntry < Struct.new(
      :location_arn,
      :location_uri)
      include Aws::Structure
    end

    # A list of Amazon Resource Names (ARNs) of agents to use for a Network
    # File System (NFS) location.
    #
    # @note When making an API call, you may pass OnPremConfig
    #   data as a hash:
    #
    #       {
    #         agent_arns: ["AgentArn"], # required
    #       }
    #
    # @!attribute [rw] agent_arns
    #   ARNs)of the agents to use for an NFS location.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/OnPremConfig AWS API Documentation
    #
    class OnPremConfig < Struct.new(
      :agent_arns)
      include Aws::Structure
    end

    # Represents the options that are available to control the behavior of a
    # StartTaskExecution operation. Behavior includes preserving metadata
    # such as user ID (UID), group ID (GID), and file permissions, and also
    # overwriting files in the destination, data integrity verification, and
    # so on.
    #
    # A task has a set of default options associated with it. If you don't
    # specify an option in StartTaskExecution, the default value is used.
    # You can override the defaults options on each task execution by
    # specifying an overriding `Options` value to StartTaskExecution.
    #
    # @note When making an API call, you may pass Options
    #   data as a hash:
    #
    #       {
    #         verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, NONE
    #         atime: "NONE", # accepts NONE, BEST_EFFORT
    #         mtime: "NONE", # accepts NONE, PRESERVE
    #         uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #         gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #         preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #         preserve_devices: "NONE", # accepts NONE, PRESERVE
    #         posix_permissions: "NONE", # accepts NONE, BEST_EFFORT, PRESERVE
    #         bytes_per_second: 1,
    #       }
    #
    # @!attribute [rw] verify_mode
    #   A value that determines whether a data integrity verification should
    #   be performed at the end of a task execution after all data and
    #   metadata have been transferred.
    #
    #   Default value: POINT\_IN\_TIME\_CONSISTENT.
    #
    #   POINT\_IN\_TIME\_CONSISTENT: Perform verification (recommended).
    #
    #   NONE: Skip verification.
    #   @return [String]
    #
    # @!attribute [rw] atime
    #   A file metadata value that shows the last time a file was accessed
    #   (that is, when the file was read or written to). If you set `Atime`
    #   to BEST\_EFFORT, DataSync attempts to preserve the original `Atime`
    #   attribute on all source files (that is, the version before the
    #   PREPARING phase). However, `Atime`'s behavior is not fully standard
    #   across platforms, so AWS DataSync can only do this on a best-effort
    #   basis.
    #
    #   Default value: BEST\_EFFORT.
    #
    #   BEST\_EFFORT: Attempt to preserve the per-file `Atime` value
    #   (recommended).
    #
    #   NONE: Ignore `Atime`.
    #
    #   <note markdown="1"> If `Atime` is set to BEST\_EFFORT, `Mtime` must be set to PRESERVE.
    #
    #    If `Atime` is set to NONE, `Mtime` must also be NONE.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] mtime
    #   A value that indicates the last time that a file was modified (that
    #   is, a file was written to) before the PREPARING phase.
    #
    #   Default value: PRESERVE.
    #
    #   PRESERVE: Preserve original `Mtime` (recommended)
    #
    #   NONE: Ignore `Mtime`.
    #
    #   <note markdown="1"> If `Mtime` is set to PRESERVE, `Atime` must be set to BEST\_EFFORT.
    #
    #    If `Mtime` is set to NONE, `Atime` must also be set to NONE.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] uid
    #   The user ID (UID) of the file's owner.
    #
    #   Default value: INT\_VALUE. This preserves the integer value of the
    #   ID.
    #
    #   INT\_VALUE: Preserve the integer value of UID and group ID (GID)
    #   (recommended).
    #
    #   NONE: Ignore UID and GID.
    #   @return [String]
    #
    # @!attribute [rw] gid
    #   The group ID (GID) of the file's owners.
    #
    #   Default value: INT\_VALUE. This preserves the integer value of the
    #   ID.
    #
    #   INT\_VALUE: Preserve the integer value of user ID (UID) and GID
    #   (recommended).
    #
    #   NONE: Ignore UID and GID.
    #   @return [String]
    #
    # @!attribute [rw] preserve_deleted_files
    #   A value that specifies whether files in the destination that don't
    #   exist in the source file system should be preserved.
    #
    #   Default value: PRESERVE.
    #
    #   PRESERVE: Ignore such destination files (recommended).
    #
    #   REMOVE: Delete destination files that aren’t present in the source.
    #   @return [String]
    #
    # @!attribute [rw] preserve_devices
    #   A value that determines whether AWS DataSync should preserve the
    #   metadata of block and character devices in the source file system,
    #   and recreate the files with that device name and metadata on the
    #   destination.
    #
    #   <note markdown="1"> AWS DataSync can't sync the actual contents of such devices,
    #   because they are nonterminal and don't return an end-of-file (EOF)
    #   marker.
    #
    #    </note>
    #
    #   Default value: NONE.
    #
    #   NONE: Ignore special devices (recommended).
    #
    #   PRESERVE: Preserve character and block device metadata. This option
    #   isn't currently supported for Amazon EFS.
    #   @return [String]
    #
    # @!attribute [rw] posix_permissions
    #   A value that determines which users or groups can access a file for
    #   a specific purpose such as reading, writing, or execution of the
    #   file.
    #
    #   Default value: PRESERVE.
    #
    #   PRESERVE: Preserve POSIX-style permissions (recommended).
    #
    #   NONE: Ignore permissions.
    #
    #   <note markdown="1"> AWS DataSync can preserve extant permissions of a source location.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] bytes_per_second
    #   A value that limits the bandwidth used by AWS DataSync. For example,
    #   if you want AWS DataSync to use a maximum of 1 MB, set this value to
    #   `1048576` (`=1024*1024`).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/Options AWS API Documentation
    #
    class Options < Struct.new(
      :verify_mode,
      :atime,
      :mtime,
      :uid,
      :gid,
      :preserve_deleted_files,
      :preserve_devices,
      :posix_permissions,
      :bytes_per_second)
      include Aws::Structure
    end

    # The Amazon Resource Name (ARN) of the AWS Identity and Access
    # Management (IAM) role that is used to access an Amazon S3 bucket. For
    # detailed information about using such a role, see [Components and
    # Terminology][1] in the *AWS DataSync User Guide*.
    #
    #
    #
    # [1]: https://alpha-aws-docs.aws.amazon.com/sync-service/latest/userguide/create-locations-cli.html#create-location-s3-cli
    #
    # @note When making an API call, you may pass S3Config
    #   data as a hash:
    #
    #       {
    #         bucket_access_role_arn: "IamRoleArn", # required
    #       }
    #
    # @!attribute [rw] bucket_access_role_arn
    #   The Amazon S3 bucket to access. This bucket is used as a parameter
    #   in the CreateLocationS3 operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/S3Config AWS API Documentation
    #
    class S3Config < Struct.new(
      :bucket_access_role_arn)
      include Aws::Structure
    end

    # StartTaskExecutionRequest
    #
    # @note When making an API call, you may pass StartTaskExecutionRequest
    #   data as a hash:
    #
    #       {
    #         task_arn: "TaskArn", # required
    #         override_options: {
    #           verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, NONE
    #           atime: "NONE", # accepts NONE, BEST_EFFORT
    #           mtime: "NONE", # accepts NONE, PRESERVE
    #           uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #           preserve_devices: "NONE", # accepts NONE, PRESERVE
    #           posix_permissions: "NONE", # accepts NONE, BEST_EFFORT, PRESERVE
    #           bytes_per_second: 1,
    #         },
    #       }
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task to start.
    #   @return [String]
    #
    # @!attribute [rw] override_options
    #   Represents the options that are available to control the behavior of
    #   a StartTaskExecution operation. Behavior includes preserving
    #   metadata such as user ID (UID), group ID (GID), and file
    #   permissions, and also overwriting files in the destination, data
    #   integrity verification, and so on.
    #
    #   A task has a set of default options associated with it. If you
    #   don't specify an option in StartTaskExecution, the default value is
    #   used. You can override the defaults options on each task execution
    #   by specifying an overriding `Options` value to StartTaskExecution.
    #   @return [Types::Options]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartTaskExecutionRequest AWS API Documentation
    #
    class StartTaskExecutionRequest < Struct.new(
      :task_arn,
      :override_options)
      include Aws::Structure
    end

    # StartTaskExecutionResponse
    #
    # @!attribute [rw] task_execution_arn
    #   The Amazon Resource Name (ARN) of the specific task execution that
    #   was started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartTaskExecutionResponse AWS API Documentation
    #
    class StartTaskExecutionResponse < Struct.new(
      :task_execution_arn)
      include Aws::Structure
    end

    # Represents a single entry in a list of AWS resource tags.
    # `TagListEntry` returns an array that contains a list of tasks when the
    # ListTagsForResource operation is called.
    #
    # @note When making an API call, you may pass TagListEntry
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The key for an AWS resource tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for an AWS resource tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TagListEntry AWS API Documentation
    #
    class TagListEntry < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # TagResourceRequest
    #
    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TaggableResourceArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to apply the tag to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Represents a single entry in a list of task executions.
    # `TaskExecutionListEntry` returns an array that contains a list of
    # specific invocations of a task when ListTaskExecutions operation is
    # called.
    #
    # @!attribute [rw] task_execution_arn
    #   The Amazon Resource Name (ARN) of the task that was executed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a task execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskExecutionListEntry AWS API Documentation
    #
    class TaskExecutionListEntry < Struct.new(
      :task_execution_arn,
      :status)
      include Aws::Structure
    end

    # Describes the detailed result of a `TaskExecution` operation. This
    # result includes the time in milliseconds spent in each phase, the
    # status of the task execution, and the errors encountered.
    #
    # @!attribute [rw] prepare_duration
    #   The total time in milliseconds that AWS DataSync spent in the
    #   PREPARING phase.
    #   @return [Integer]
    #
    # @!attribute [rw] prepare_status
    #   The status of the PREPARING phase.
    #   @return [String]
    #
    # @!attribute [rw] transfer_duration
    #   The total time in milliseconds that AWS DataSync spent in the
    #   TRANSFERRING phase.
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_status
    #   The status of the TRANSFERRING Phase.
    #   @return [String]
    #
    # @!attribute [rw] verify_duration
    #   The total time in milliseconds that AWS DataSync spent in the
    #   VERIFYING phase.
    #   @return [Integer]
    #
    # @!attribute [rw] verify_status
    #   The status of the VERIFYING Phase.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Errors that AWS DataSync encountered during execution of the task.
    #   You can use this error code to help troubleshoot issues.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   Detailed description of an error that was encountered during the
    #   task execution. You can use this information to help troubleshoot
    #   issues.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskExecutionResultDetail AWS API Documentation
    #
    class TaskExecutionResultDetail < Struct.new(
      :prepare_duration,
      :prepare_status,
      :transfer_duration,
      :transfer_status,
      :verify_duration,
      :verify_status,
      :error_code,
      :error_detail)
      include Aws::Structure
    end

    # Represents a single entry in a list of tasks. `TaskListEntry` returns
    # an array that contains a list of tasks when the ListTasks operation is
    # called. A task includes the source and destination file systems to
    # sync and the options to use for the tasks.
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskListEntry AWS API Documentation
    #
    class TaskListEntry < Struct.new(
      :task_arn,
      :status,
      :name)
      include Aws::Structure
    end

    # UntagResourceRequest
    #
    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TaggableResourceArn", # required
    #         keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove the tag
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   The keys in the key-value pair in the tag to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # UpdateAgentRequest
    #
    # @note When making an API call, you may pass UpdateAgentRequest
    #   data as a hash:
    #
    #       {
    #         agent_arn: "AgentArn", # required
    #         name: "TagValue",
    #       }
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you want to use to configure the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateAgentRequest AWS API Documentation
    #
    class UpdateAgentRequest < Struct.new(
      :agent_arn,
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateAgentResponse AWS API Documentation
    #
    class UpdateAgentResponse < Aws::EmptyStructure; end

    # UpdateTaskResponse
    #
    # @note When making an API call, you may pass UpdateTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_arn: "TaskArn", # required
    #         options: {
    #           verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, NONE
    #           atime: "NONE", # accepts NONE, BEST_EFFORT
    #           mtime: "NONE", # accepts NONE, PRESERVE
    #           uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #           preserve_devices: "NONE", # accepts NONE, PRESERVE
    #           posix_permissions: "NONE", # accepts NONE, BEST_EFFORT, PRESERVE
    #           bytes_per_second: 1,
    #         },
    #         name: "TagValue",
    #       }
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the resource name of the task to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Represents the options that are available to control the behavior of
    #   a StartTaskExecution operation. Behavior includes preserving
    #   metadata such as user ID (UID), group ID (GID), and file
    #   permissions, and also overwriting files in the destination, data
    #   integrity verification, and so on.
    #
    #   A task has a set of default options associated with it. If you
    #   don't specify an option in StartTaskExecution, the default value is
    #   used. You can override the defaults options on each task execution
    #   by specifying an overriding `Options` value to StartTaskExecution.
    #   @return [Types::Options]
    #
    # @!attribute [rw] name
    #   The name of the task to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTaskRequest AWS API Documentation
    #
    class UpdateTaskRequest < Struct.new(
      :task_arn,
      :options,
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTaskResponse AWS API Documentation
    #
    class UpdateTaskResponse < Aws::EmptyStructure; end

  end
end
