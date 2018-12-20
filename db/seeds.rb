Tag.create(id: 0, tag_type: true, tag_name: '京都大学', com_count: 0)
Tag.create(id: 1, tag_type: true, tag_name: '医学部', com_count: 0)
Tag.create(id: 2, tag_type: true, tag_name: '医学科', com_count: 0)


Univinfo.create(id: 0, p_id: nil, stat: 0, name: '京都大学', tag_id: 0)
Univinfo.create(id: 1, p_id: 0, stat: 1, name: '医学部', tag_id: 1)
Univinfo.create(id: 2, p_id: 1, stat: 2, name: '医学科', tag_id: 2)


Account.new(acc_id: 'administrator', name: '管理者', grade: '-', university: '-', faculty: '-', department: '-',
               email: Settings.administrator[:email], password: Settings.administrator[:password]).save!