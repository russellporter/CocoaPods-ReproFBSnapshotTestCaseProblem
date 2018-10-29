target 'ReproFBSnapshotTestCaseProblemTests' do
    platform :ios, '12.0'

    pod 'iOSSnapshotTestCase', '~> 4.0.0'
end

post_install do |installer|
    def merge_and_link_dirs(source, destination)
        if File.symlink?(source) then
            return
        end

        if File.directory?(source) then
            system "mv #{source}/* #{destination}"
            system "rmdir #{source}"
        end

        File.symlink("../#{destination}", source)
    end

    headers_dir = installer.config.project_pods_root + 'Headers/'

    # Work around for FBSnapshotTestCase with static linking.
    # This is needed because of buggy handling of the differing module and project names.
    # NOTE: Uncomment to resolve the build failure
    # Dir.chdir(headers_dir) do
    #     merge_and_link_dirs('Private/FBSnapshotTestCase', 'Private/iOSSnapshotTestCase')
    #     merge_and_link_dirs('Public/FBSnapshotTestCase', 'Public/iOSSnapshotTestCase')
    # end
end
